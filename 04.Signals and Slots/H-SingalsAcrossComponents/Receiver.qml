import QtQuick

Item {
    id: rootId
    width: receiverId.width
    height: receiverId.height

    function receiveInfo(count){
        textId.text = count
    }

    Rectangle{
        id: receiverId
        width: 200
        height: 200
        color: "yellow"

        Text {
            id: textId
            anchors.centerIn: parent
            font.pixelSize: 20
            text: "0"
        }
    }
}
