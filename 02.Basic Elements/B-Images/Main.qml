import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item{
        id: containerItemId
        x: 150
        y: 50
        width: 600
        height: 300

        Image{
            x: 10
            y: 50
            width: 100
            height: 100
            //Loading the image from the working directory
            source: "file:LearnQt.png"
        }

        Image {
            x: 300
            y: 50
            width: 100
            height: 100
            //Specify the full path to the image
            source: "file:///D:/Projects/Qml_learning/02.Basic Elements/B-Images/Images/LearnQt.png" // platform-dependent(windows)
        }

        Image{
            x: 160
            y: 50
            width: 100
            height: 100
            //Loading the image from the working directory
            source: "qrc:/Images/LearnQt.png"
        }

        Image {
            x: 150
            y: 250
            width: 100
            height: 100
            //Specify the full web path to the image
            source: "https://www.learnqt.guide/assets/blog/image/LearnQt.png"
        }
    }
}
