import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals Across Qml Components!")

    Notifier{
        id: notifierId
        target: receiverId
    }

    Receiver{
        id: receiverId
        anchors.right: parent.right
    }

    // Component.onCompleted:{
    //     notifierId.notify.connect(receiverId.receiveInfo)
    // }
}
