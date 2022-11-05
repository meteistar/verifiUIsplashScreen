import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 600
    height: 400
    visible: true
    title: qsTr("Hello World")

    property bool startAnim: false



    Rectangle{
        anchors.fill: parent
        Rectangle{
            anchors.fill: parent
            color: "red"
        }
        Image {
            id: background_dark
            source: "qrc:/assets/images/background_dark.png"
            fillMode: Image.PreserveAspectFit
            opacity: bottombar.state == "Start" ? 1 : 0

            Behavior on opacity{
                NumberAnimation {
                    property: "opacity"
                    duration: 1000
                }
            }
        }

        BottomBar{
            id: bottombar
//            onStartClicked: {
//                background_dark.opacity = 0
//            }

        }


    }








}
