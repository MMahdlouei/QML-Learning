import QtQuick // No version needed in Qt6

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var fonts: Qt.fontFamilies()

    Text {
        anchors.centerIn: parent
        color: Qt.rgba(1, 0, 0, 1)
        text: Qt.md5("hello, world")
        font.pointSize: 20
    }

    Rectangle{
        id: clickableRectId
        width: 300
        height: 100
        anchors.bottom: parent.bottom
        color: "dodgerblue"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                Qt.quit() // Quit the application

                // for(var i = 0; i < fonts.length; i++){
                //     console.log("[" + i +  "] " + fonts[i])
                // }

                // //Hash a string
                // var mText = "hello, world"
                // var mTextHash = Qt.md5(mText)
                // console.log("The hash of the text is: " + mTextHash)


                // //Open url externally
                // Qt.openUrlExternally("https://github.com/MMahdlouei/QML-Learning")

                //Open local files with the default program
                Qt.openUrlExternally("file:///D:/Documents/Images/Saina_S.jpg")

                //Capture platform info
                console.log("The current platform is: " + Qt.platform.os)

            }
        }
    }
}
