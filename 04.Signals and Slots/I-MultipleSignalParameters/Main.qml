import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Multiple Signal Parameters")

    signal info(string last_name, string first_name, string age)

    // onInfo: function(l, f, a){
    //     console.log("Last Name: " + l + ", First Name: " + f + ", Age: " + a)
    // }

    onInfo: function(_, f){
        console.log("Last Name: " + _ + ", First Name: " + f)
    }

    Rectangle {
        id: rectId
        width: 300
        height: 300
        color: "blue"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rootId.info("Mhd", "Majid", "36")
            }
        }
    }
}
