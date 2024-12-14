import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Connecting Signals to Signals")

    Rectangle{
        id: rectId
        width: 300
        height: 300
        color: "dodgerblue"

        signal greet(string message)
        signal forward_greeting(string message)


        MouseArea{
            anchors.fill: parent
            onClicked:{
                rectId.greet("Response from rectangle!")
            }
        }
    }


    function respond(message){
        console.log("Custom responde: " + message)
    }

    Component.onCompleted:{
        rectId.greet.connect(rectId.forward_greeting)
        rectId.forward_greeting.connect(respond)
    }
}
