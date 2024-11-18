import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rectId
        width: 200
        height: 200
        color: "gray"

        signal great(string message)


        // onGreat: message => {
        //     console.log("message => Greeting with message: " + message)
        // }

        onGreat: function(message){
            console.log("function(message) Greeting with message: " + message)
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectId.great("Signal Message!") //Must have id
            }
        }
    }
}
