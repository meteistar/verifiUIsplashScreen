import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: root

    width: 150 ; height: 150
    color: "transparent"
    border.color: "white"
    border.width: 4
    anchors.centerIn: parent


    Rectangle{
        width: 20 ; height: 20
        color: "#208DEB"

    }
    Rectangle{
        anchors{
            right: parent.right
            top: parent.top
        }

        width: 20 ; height: 20
        color: "#208DEB"

    }
    Rectangle{
        anchors{
            right: parent.right
            bottom: parent.bottom
        }
        width: 20 ; height: 20
        color: "#208DEB"

    }
    Rectangle{
        anchors{
            left: parent.left
            bottom: parent.bottom
        }
        width: 20 ; height: 20
        color: "#208DEB"

    }
}
