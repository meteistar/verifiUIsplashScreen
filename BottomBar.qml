import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: root

    signal startClicked

    //visible: state == "MapSurface" ? false : true

    state: "Start"

    //TODO make it singleton
    color: Qt.rgba(0, 0, 0, 0.66)
    height: 104
    anchors{
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }


    Label{
        id: welcomeLabel
        text: "WELCOME TO VERIFI NDT"
        font.family: Font.regular.name
        font.pixelSize: 48
        opacity: menuButton.state == "Start" ? 1 : 0

        //font.letterSpacing: 0.5;
        Behavior on opacity{
            NumberAnimation {
                property: "opacity"
                duration: 1000

                onRunningChanged: {
                    //            if (!running) {
                    //                console.log("Destroying...")

                    //                root.destroy();
                    //            }
                }
            }
        }
        anchors.centerIn: parent
    }

    ProgresDot{
        id:positionRobotDot

        visible: menuButton.state != "Start"
        state: "filled"
        name: "POSITION<br>ROBOT"
        anchors.leftMargin: 87
    }

    ProgresDot{
        id: mapSurfaceDot

        visible: menuButton.state != "Start"
        state: {
            if( menuButton.state == "MapSurface" || menuButton.state == "DefineRoi" ||
                    menuButton.state == "MapRoi" || menuButton.state == "RobotSettings" ||
                    menuButton.state == "SelectModality" || menuButton.state == "DefineRoi")
                return "filled"
            else
                return "unfilled"
        }

        name: "MAP<br>SURFACE"
        anchors.leftMargin: 87+20+108
    }

    ProgresDot{
        id: defineRoiDot

        visible: menuButton.state != "Start"
        state: {
            if(menuButton.state == "DefineRoi" ||
                    menuButton.state == "MapRoi" || menuButton.state == "RobotSettings" ||
                    menuButton.state == "SelectModality" || menuButton.state == "SetUpPaut" ||
                    menuButton.state == "UtPreScan")
                return "filled"
            else
                return "unfilled"
        }
        name: "DEFINE<br>ROI"
        anchors.leftMargin: 87+20+108+20+108
    }

    ProgresDot{
        id: mapRoiDot

        visible: menuButton.state != "Start"
        state: {
            if(
                    menuButton.state == "MapRoi" || menuButton.state == "RobotSettings" ||
                    menuButton.state == "SelectModality" || menuButton.state == "SetUpPaut" ||
                    menuButton.state == "UtPreScan")
                return "filled"
            else
                return "unfilled"
        }
        name: "MAP<br>ROI"
        anchors.leftMargin: 87+20+108+20+108+20+108
    }

    ProgresDot{
        id: robotSettingsDot

        visible: menuButton.state != "Start"
        state: {
            if(menuButton.state == "RobotSettings" || menuButton.state == "SelectModality" ||
                    menuButton.state == "SetUpPaut" ||
                    menuButton.state == "UtPreScan")
                return "filled"
            else
                return "unfilled"
        }
        name: "ROBOT<br>SETTINGS"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: selectModalityDot

        visible: menuButton.state != "Start"
        state: {
            if(menuButton.state == "SelectModality" ||
                    menuButton.state == "SetUpPaut" ||
                    menuButton.state == "UtPreScan")
                return "filled"
            else
                return "unfilled"
        }
        name: "SELECT<br>MODALITY"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: setupPoutDot

        visible: menuButton.state != "Start"
        state: {
            if(menuButton.state == "SetUpPaut" ||
                    menuButton.state == "UtPreScan")
                return "filled"
            else
                return "unfilled"
        }
        name: "SET UP<br>PAUT"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: utPrescanDot

        visible: menuButton.state != "Start"
        state: {
            if(menuButton.state == "UtPreScan")
                return "filled"
            else
                return "unfilled"
        }
        name: "UT<br>PRESCAN"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: utScanDot

        visible: menuButton.state != "Start"
        name: "UT<br>SCAN"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: scanAnalysisDot

        visible: menuButton.state != "Start"
        name: "SCAN<br>ANALYSIS"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108+20+108+20+108+20+108+20+108
    }

    MainActionButton{
        id: menuButton
        anchors{
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 20
        }
        onStateChanged: {
            root.state = state
        }
    }

}
