import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle{
    id: root

    property alias name: progresLabel.text

    state: "unfilled"

    //TODO make it singleton
    color: "black"
    border.color: "#208DEB"
    border.width: 4
    width: 20 ; height: width
    radius: width/2

    anchors{
        left: parent.left
        top: parent.top
        topMargin: 17
    }

    ProgressLabel{
        id: progresLabel
    }

    ProgressLink{
        anchors.left: root.right
    }
    Behavior on color{
        NumberAnimation {
            property: "color"
            duration: 1000
        }
    }

    states: [
        State {
            name: "unfilled"
            PropertyChanges {
                target: root ; color: "transparent"

            }
        },
        State {
            name: "filled"
            PropertyChanges {
                target: root; color: "#208DEB"

            }
        }
    ]
}
