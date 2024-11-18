import QtQuick
import GreatButtons

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        x: 10
        y: 10

        RedButton{
            buttonText: "Button 1"
        }
        BlueButton{
            buttonText: "Button 2"
        }
        GreenButton{
            buttonText: "Button 3"
        }
        YellowButton{
            buttonText: "Button 4"
        }
    }
}
