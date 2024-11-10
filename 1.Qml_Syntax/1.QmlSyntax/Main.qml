import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml Syntax Demo")
    property string textToShow: "Hello"
    Row{
        spacing: 5
        anchors.centerIn: parent
        Rectangle{
            id: redRectId
            width: 100
            height: 100
            color: "red"
            radius: 15
            border.color: "black"
            border.width: 5
            MouseArea{
                anchors.fill: parent // Telling the mouse area fill the rectangle that contains it
                onClicked: {
                    console.log("Clicked on Red")
                    textToShow = "Red"
                }
            }
        }
        Rectangle{
            id: blueRectId
            width: 100
            height: 100
            color: "blue"
            radius: 15
            border.color: "black"
            border.width: 5
            MouseArea{
                anchors.fill: parent // Telling the mouse area fill the rectangle that contains it
                onClicked: {
                    console.log("Clicked on Blue")
                    textToShow = "Blue"
                }
            }
        }
        Rectangle{
            id: greenRectId
            width: 100
            height: 100
            color: "green"
            radius: 15
            border.color: "black"
            border.width: 5
            MouseArea{
                anchors.fill: parent // Telling the mouse area fill the rectangle that contains it
                onClicked: {
                    console.log("Clicked on Green")
                    textToShow = "Green"
                }
            }
        }

        Rectangle{
            id: circId
            width: 100
            height: 100
            color: "dodgerblue"
            radius: 50
            border.color: "black"
            border.width: 5

            Text{
                id: textId
                anchors.centerIn: parent
                text: root.textToShow
            }

            MouseArea{
                anchors.fill: parent // Telling the mouse area fill the rectangle that contains it
                onClicked: {
                    console.log("Clicked on Circle")
                    textId.text = "Broken"
                }
            }
        }
    }
}
