import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Connections")

    Rectangle{
        id: rectId
        width: 200
        height: 200
        color: "dodgerblue"
    }

    MouseArea{
        id: mousAreaId
        anchors.fill: parent
    }

    Connections{
        target: mousAreaId
        function onClicked(){
            console.log("Clicked on rectangle")
        }


        function onDoubleClicked(mouse){
            console.log("Double clicked at: " + mouse.x)
        }
    }
}


