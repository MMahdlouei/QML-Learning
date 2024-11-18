import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Change Handlers")
    Rectangle{
        id: rectId
        width: 300
        height: width + 50
        color: "dodgerblue"

        property string description: "A rectangle to play with"

        onWidthChanged: {
            console.log("Width changes to: " + rectId.width)
        }

        onHeightChanged: {
            console.log("Height changes to: " + rectId.height)
        }

        onColorChanged: {

        }

        onVisibleChanged: {

        }

        onDescriptionChanged: {
            console.log("Description changes to: " + rectId.description)
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectId.width +=  20
                rectId.description = "New Description"
            }

        }
    }
}
