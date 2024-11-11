import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item{
        id: containerItem
        x: 50
        y: 50
        width: 400
        height: 200

        Rectangle{
            anchors.fill: parent
            color: "dodgerblue"

            // border.color: "black" // border is a grouped property because includes more than one property
            // border.width: 5

            // border{
            //     color: "black"
            //     width: 5
            //  }

            border.color: "black"; border.width: 5
        }

        Rectangle{
            x: 10
            y: 10
            width: 50
            height: 50
            color: "red"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x: 70
            y: 10
            width: 50
            height: 50
            color: "lightgreen"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Text{
            id: mTextId
            x: 100
            y: 100
            text: "Hello World!"
            color: "black"
            font{
                family: "Helvetica"
                bold: true
                pointSize: 30
            }
        }
    }
}
