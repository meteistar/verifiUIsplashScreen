import QtQuick 2.0

Rectangle {
    id: root

    state: "empty"

    width: 90 ; height: 90
    color: "transparent"
    border{
        color: "white"
        width: 4
    }

    Rectangle{
       id: innerRect
       anchors.centerIn: parent
       opacity: 0
       width: 74 ; height: 74
       color: "white"
    }

    Behavior on opacity{
        NumberAnimation {
            //property: "opacity"
            duration: 1000
        }
    }

    states: [
        State {
            name: "empty"
            PropertyChanges {
                target: innerRect ; opacity: 0

            }
        },
        State {
            name: "filled"
            PropertyChanges {
                target: innerRect; opacity: 1

            }
        }
    ]

    transitions: Transition {
            NumberAnimation { properties: "opacity"; easing.type: Easing.InOutQuad ; duration: 1000}
        }
}
