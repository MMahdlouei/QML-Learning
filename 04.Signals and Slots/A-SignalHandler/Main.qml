import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal Handlers")

    Rectangle{
        id: rectId
        width: 150
        height: 150
        color: "red"


        MouseArea{
            hoverEnabled: true
            anchors.fill: parent

            onClicked: {
                console.log("Clicked on rectangle!")
            }

            onDoubleClicked: {
                console.log("Double clicked on rectangle!")
            }

            onEntered: {
                console.log("Entered mouse area!")
            }

            onExited: {
                console.log("Exited mouse area!")
            }

            onWheel: wheel=> {
                console.log("Mouse wheel: "+ wheel.angleDelta)
            }

            onReleased: p=> {
                console.log("Released at X: " + p.x + ",y: " + p.y)
            }

            onPressAndHold: mouse=> {
                console.log("Mouse is held: " + mouse.wasHeld)
            }

            onPositionChanged: function(mouse){
                console.log("Position changed at X: " + mouse.x + ",y: " + mouse.y)
            }
        }
    }
}
