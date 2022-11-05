import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 600
    height: 400
    visible: true
    title: qsTr("Hello World")

    property bool startAnim: false

    SplashScreen{
        id:splash
    }

    Button{

    }

//    Rectangle {
//        id: rect
//        anchors.fill: parent
//        color: "red"

//        NumberAnimation on opacity {
//            id: destroyanim
//            running: startAnim

//            to: 0
//            duration: 1000

//            onRunningChanged: {
//                if (!running) {
//                    console.log("Destroying...")

//                    rect.destroy();
//                }
//            }
//        }


//    }

//    Button{
//        id: button
//        text: "Start Anim"
//        onClicked: {
//            startAnim = true
//            if(rect === null){
//                console.log("rect null")
//            }

//            console.log(rect.width)
//            //rect1.z = 0
//            //rect2.z = 10
//        }
//    }
//    Rectangle{
//        id:rect1
//        z: 10
//        width: 50 ; height: 50
//        color: "black"
//        anchors{
//            fill: parent
//        }
//        OpacityAnimator {
//                id: anim1
//                target: rect1;
//                from: 1;
//                to: 0;
//                duration: 1000
//                running: startAnim
//        }
//        Button{
//            anchors.centerIn: parent
//            text: "Rect1 Button"
//            onClicked: {
//                console.log("Rect1 button pressed")
//            }
//        }

//        Button{
//            id: button
//            text: "Start Anim"
//            onClicked: {
//                startAnim = true
//                rect1.z = 0
//                rect2.z = 10
//            }
//        }
//    }

//    Rectangle{
//        id:rect2
//        z:0
//        width: 50 ; height: 50
//        color: "red"
//        opacity: 0
//        anchors{
//            fill: parent
//        }
//        OpacityAnimator {
//                id: anim2
//                target: rect2;
//                from: 0;
//                to: 1;
//                duration: 1000
//                running: startAnim
//        }
//        Button{
//            anchors.centerIn: parent
//            text: "Rect2 Button"
//            onClicked: {
//                console.log("Rect2 button pressed")
//            }
//        }
//    }


}
