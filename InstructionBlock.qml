import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: root

    property bool animStart: false

    width: 250 ; height: 316
    radius: 20
    color: Qt.rgba(0, 0, 0, 0.66)

    anchors.verticalCenter: parent.verticalCenter
    x: -100
    NumberAnimation on x { to: 0; duration: 500 ; running: animStart}

    Image {
        id: icon
        source: "qrc:/assets/images/warning.png"
        width: 48 ; height: 42
        anchors{
            top: parent.top
            topMargin: 30
            horizontalCenter: parent.horizontalCenter
        }
    }

    Label{
        id: text
        text: "<strong>Robot is in free-<br>drive mode.<br></strong><br> Use your hand to <br>position the camera <br>so that the entire<br> workpiece is in view <br>and centered"
        width: 170 ; height: 174
        font.pixelSize: 18
        wrapMode: Text.WordWrap
        color: "#FFFFFF"
        anchors{
            top: parent.top
            topMargin: 102
            horizontalCenter: parent.horizontalCenter
        }
    }
    //TODO export background image
    Rectangle{
        width: 20 ; height: width
        color: Qt.rgba(0, 0, 0, 0.33)
        anchors{
            left: parent.left
            top: parent.top
        }
    }
    Rectangle{
        width: 20 ; height: width
        color: Qt.rgba(0, 0, 0, 0.33)
        anchors{
            left: parent.left
            bottom: parent.bottom
        }
    }
}
