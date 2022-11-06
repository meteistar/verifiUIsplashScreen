import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: root

    signal startClicked


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

        state: {
            if(menuButton.state == "DefineRoi" ||
                    menuButton.state == "MapRoi" || menuButton.state == "RobotSettings" ||
                    menuButton.state == "" || menuButton.state == "DefineRoi")
                return "filled"
            else
                return "unfilled"
        }

        name: "MAP<br>SURFACE"
        anchors.leftMargin: 87+20+108
    }

    ProgresDot{
        id: defineRoiDot

        state: menuButton.state === "MapRoi" ? "filled" : "unfilled"
        name: "DEFINE<br>ROI"
        anchors.leftMargin: 87+20+108+20+108
    }

    ProgresDot{
        id: mapRoiDot

        state: "filled"
        name: "MAP<br>ROI"
        anchors.leftMargin: 87+20+108+20+108+20+108
    }

    ProgresDot{
        id: robotSettingsDot

        name: "ROBOT<br>SETTINGS"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: selectModalityDot

        name: "SELECT<br>MODALITY"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: setupPoutDot

        name: "SET UP<br>POUT"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: utPrescanDot
        name: "UT<br>PRESCAN"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: utScanDot
        name: "UT<br>SCAN"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108+20+108+20+108+20+108
    }

    ProgresDot{
        id: scanAnalysisDot

        name: "SCAN<br>ANALYSIS"
        anchors.leftMargin: 87+20+108+20+108+20+108+20+108+20+108+20+108+20+108+20+108+20+108
    }

    Button{
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
