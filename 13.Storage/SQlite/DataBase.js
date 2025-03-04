

function dbInit(){
    console.log("Initializing database...");

    // Specify the desired location for the database
    var dbPath = Qt.resolvedUrl("//d:/mydb.sqlite");// You can replace this with a custom location
    console.log("Database will be stored at: " + dbPath);

    // Open the database at the specific location
    db = LocalStorage.openDatabaseSync(dbPath, "1.0", "SQLite Demo database", 100000);

    // Create table if it doesn't exist
    db.transaction(function(tx) {
        console.log("...create table");
        tx.executeSql('CREATE TABLE IF NOT EXISTS sqlitedemotable(name TEXT, value TEXT)');
    });
}

function storeData(){
    console.log("Storing data...");

    if (!db){
        return;
    }

    db.transaction(function(tx){
        // Check if sqlitedemo entry is available in database table
        var result = tx.executeSql('SELECT * FROM sqlitedemotable WHERE name = "sqlitedemo"');

        // Prepare json object data from qml code
        var obj = {
            x: rootId.x, y: rootId.y,
            width: rootId.width, height: rootId.height,
            colorred: rectId.color.r, colorgreen: rectId.color.g,
            colorblue: rectId.color.b
        };

        if (result.rows.length === 1) {
            // Update existing entry
            console.log("Updating database table...");
            result = tx.executeSql('UPDATE sqlitedemotable SET value=? WHERE name="sqlitedemo"',
                                   [JSON.stringify(obj)]);
        } else {
            // Create a new entry
            console.log("Creating new database table entry...");
            result = tx.executeSql('INSERT INTO sqlitedemotable VALUES (?,?)',
                                   ['sqlitedemo', JSON.stringify(obj)]);
        }
    });
}

function readData(){
    console.log("Reading data...");

    if (!db){
        return;
    }

    db.transaction(function(tx) {
        console.log('...Reading data from database');
        var result = tx.executeSql('SELECT * FROM sqlitedemotable WHERE name="sqlitedemo"');

        if(result.rows.length === 1){
            // We have data that we can work with

            // Get the value column
            var value = result.rows[0].value;
            // Convert to JS object
            var obj = JSON.parse(value);

            // Apply to the object
            rootId.x = obj.x;
            rootId.y = obj.y;
            rootId.width = obj.width;
            rootId.height = obj.height;
            rectId.color = Qt.rgba(obj.colorred, obj.colorgreen, obj.colorblue, 1);
        }
    });
}
