import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    // methode 1

    Row{
        spacing: 20
        Loader{
            id: firstButton
            sourceComponent: buttonComponent
            onLoaded: {
                console.log(item)
                var customButton = firstButton.item
            }
        }
    }

    Component{
        id: buttonComponent

        Item{
            id: rootId
            property  alias buttonText: buttonTextId.text
            width: containerRectId.width
            height: containerRectId.height
            signal buttonClicked

            Rectangle{
                id: containerRectId
                width: buttonTextId.implicitWidth + 10
                height: buttonTextId.implicitHeight + 10
                color: "red"
                border{
                    color: "blue"
                    width: 3
                }

                Text{
                    id: buttonTextId
                    text: ""
                    anchors.centerIn: parent
                }

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        console.log("Clicked on " + buttonTextId.text)
                        rootId.buttonClicked()//Emit your signal
                    }
                }
            }
        }
    }
}
