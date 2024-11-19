import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Connecting Signal to Method")

    Rectangle{
        id: rectId
        width: 300
        height: 300
        color: "dodgerblue"

        signal greet(string message)

        function respond_your_way(message){
            console.log("Custom response: " + message)
        }


        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectId.greet("My Custom Message!")
            }
        }
    }

    Component.onCompleted: {
        rectId.greet.connect(rectId.respond_your_way)
    }
}
