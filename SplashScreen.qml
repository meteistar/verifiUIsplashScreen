import QtQuick 2.0
import QtQuick.Controls 2.15
import Font 1.0

Item {
    id: root
    anchors.fill: parent
    property bool startAnim: false

//    ParallelAnimation{
//        running: startAnim
//        NumberAnimation {
//            property: "opacity"
//            running: startAnim
//            target: background_dark
//            to: 0
//            duration: 1000

//            onRunningChanged: {
//                //            if (!running) {
//                //                console.log("Destroying...")

//                //                root.destroy();
//                //            }
//            }
//        }
//        NumberAnimation {
//            property: "opacity"
//            target: welcomeLabel
//            to: 0
//            duration: 1000

//            onRunningChanged: {
//                //            if (!running) {
//                //                console.log("Destroying...")

//                //                root.destroy();
//                //            }
//            }
//        }
//    }

    Image {
        id: background_dark
        source: "qrc:/assets/images/background_dark.png"
        fillMode: Image.PreserveAspectFit

    }
    BottomBar{

    }

//    Rectangle{
//        id: bottomRect
//        color: Qt.rgba(0, 0, 0, 0.66)
//        anchors{
//            left: parent.left
//            right: parent.right
//            bottom: parent.bottom
//        }
//        height: 104

//        Label{
//            id: welcomeLabel
//            text: "WELCOME TO VERIFI NDT"
//            font.family: Font.regular.name
//            font.pixelSize: 48
//            //font.letterSpacing: 0.5;

//            anchors.centerIn: parent
//        }

//        Button{
//            anchors{
//                verticalCenter: parent.verticalCenter
//                right: parent.right
//                rightMargin: 20
//            }
//            onStartClicked: {
//                console.log("signal catched")
//                startAnim = true
//            }
//        }


//    }

}
