import QtQuick 2.0

Item {
    id: root

    anchors.fill: parent

    Rectangle{
        id: rect
        width: 240 ; height: 10
        color: Qt.rgba(255, 255, 255, 0.5)
        anchors{
            left: parent.left
            leftMargin: 54
            top: parent.top
            topMargin: 44
        }
    }

//    Rectangle{
//        id: innerRef
//        width: 100 ; height: 6
//        color: Qt.rgba(255, 255, 255, 0.5)
//        anchors{
//            left: rect.left
//            leftMargin: 612
//            top: rect.top
//            topMargin: 264
//        }
//    }
    Rectangle{
        width: 240 ; height: 10
        color: Qt.rgba(255, 255, 255, 0.5)
        anchors{
            right: parent.right
            rightMargin: 54
            top: parent.top
            topMargin: 44
        }
    }

    Rectangle{
        width: 240 ; height: 10
        color: Qt.rgba(255, 255, 255, 0.5)
        anchors{
            left: parent.left
            leftMargin: 54
            bottom: parent.bottom
            bottomMargin: 44
        }
    }

    Rectangle{
        width: 240 ; height: 10
        color: Qt.rgba(255, 255, 255, 0.5)
        anchors{
            right: parent.right
            rightMargin: 54
            bottom: parent.bottom
            bottomMargin: 44
        }
    }

    Rectangle{
        width: 10 ; height: 240
        color: Qt.rgba(255, 255, 255, 0.5)
        anchors{
            left: parent.left
            leftMargin: 54
            top: parent.top
            topMargin: 54
        }
    }

    Rectangle{
        width: 10 ; height: 240
        color: Qt.rgba(255, 255, 255, 0.5)
        anchors{
            right: parent.right
            rightMargin: 54
            top: parent.top
            topMargin: 54
        }
    }

    Rectangle{
        width: 10 ; height: 240
        color: Qt.rgba(255, 255, 255, 0.5)
        anchors{
            left: parent.left
            leftMargin: 54
            bottom: parent.bottom
            bottomMargin: 54
        }
    }

    Rectangle{
        width: 10 ; height: 240
        color: Qt.rgba(255, 255, 255, 0.5)
        anchors{
            right: parent.right
            rightMargin: 54
            bottom: parent.bottom
            bottomMargin: 54
        }
    }
}
