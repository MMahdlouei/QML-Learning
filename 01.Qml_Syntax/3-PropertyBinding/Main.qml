import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: redRectId
        width: 50
        // height: width * 1.5
        height: 50
        color: "red"
    }

    Rectangle{
        id: blueRectId
        width: 100
        height: 100
        color: "blue"
        anchors.bottom: parent.bottom
        MouseArea{
            anchors.fill: parent
            onClicked: {
                redRectId.width = redRectId.width + 10
            }
        }
    }

    Rectangle{
        id: greenRectId
        width: 100
        height: 100
        color: "green"
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right
        MouseArea{
            anchors.fill: parent
            onClicked: {
                // redRectId.height = 100 // replace binding with static value: break the binding
                // redRectId.height = redRectId.width * 2.5 // Evaluate static value and act like static value: break the binding
                redRectId.height = Qt.binding(function(){ // New binding from this point
                    return redRectId.width * 2.5
                })
            }
        }
    }
}
