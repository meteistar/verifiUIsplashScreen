import QtQuick 2.0
import QtQuick.Controls 2.15
import Font 1.0

Item {
    id: root
    anchors.fill: parent
    Image {
        id: background_dark
        source: "qrc:/assets/images/background_dark.png"
        fillMode: Image.PreserveAspectFit

    }
    Rectangle{
        id: bottomRect
        color: Qt.rgba(0, 0, 0, 0.66)
        anchors{
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        height: 104

        Label{
            text: "WELCOME TO VERIFI NDT"
            font.family: Font.regular.name
            font.pixelSize: 48
            //font.letterSpacing: 0.5;

            anchors.centerIn: parent
        }
    }
}
