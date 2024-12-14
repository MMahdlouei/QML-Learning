import QtQuick

Item {
    id: rootId
    width: norifierId.implicitWidth
    height: norifierId.implicitHeight

    property int count: 0

    required property Receiver target
    onTargetChanged: {
        notify.connect(target.receiveInfo)
    }

    signal notify(string count)

    Rectangle{
        id: norifierId
        width: 200
        height: 200
        color: "red"

        Text {
            id: textId
            anchors.centerIn: parent
            font.pixelSize: 20
            text: rootId.count
        }

        MouseArea{
            anchors.fill: parent
            onClicked:{
                rootId.count++
                rootId.notify(rootId.count)
            }
        }
    }
}
