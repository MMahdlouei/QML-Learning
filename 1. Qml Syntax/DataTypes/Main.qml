import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string mString: "https://github.com/MMahdlouei/QML-Learning"
    property int mInt: 50
    property bool isFemale: false
    property double mDouble: 63.5
    property url mUrl: "https://github.com/MMahdlouei/QML-Learning"

    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })

    property var aFont: Qt.font({family: "Consolas", pointSize: 11, bold: true})
    property date mDate: "2024-07-19"

    Rectangle{
        width: 200
        height: 100 + root.mInt
        anchors.centerIn: parent
        color: "orange"

        Text{
            id: mTextId
            anchors.centerIn: parent
            text: root.mString
            // font.bold: root.isFemale ? true : false
            font: aFont
        }
    }

    Component.onCompleted: {
        console.log("App is Running!")
        print("The value of mString is: " + root.mString)

        if(mString === mUrl) { // Also check types
            console.log("They Are Same")
        } else {
            console.log("They Are NOT Same")
        }
        console.log("The components of aRect are x:" + aRect.x + ", y:" + aRect.y + ", width:" + aRect.width + ", height:" + aRect.height)

        anArray.forEach(function(value,index){
            if( index ===5){
                console.log(value())
            }else
            {
                console.log(value)
            }})

        for (var i = 0; i < anArray.length; i++) {
            if (i === 5) {
                console.log(anArray[i]())
            } else {
                console.log(anArray[i])
            }
        }
        console.log("The date is: " + mDate)
    }
}
