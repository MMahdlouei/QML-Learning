import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rectId
        width: 200
        height: 200
        color: "green"
    }

    Component.onCompleted: {
        console.log("Finished setting up rectangle!")
    }


    Component.onDestruction: {
        console.log("Compenet destruction started!")
    }
}
