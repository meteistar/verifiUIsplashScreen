import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: root
    width: roundRect.width
    height: roundRect.height

    //property alias name: buttonText.text
    signal startClicked
    signal mapSurfaceClicked

    state: "Start"

    Rectangle {
      id: roundRect
      radius: 20
      width: 272 ; height: 64
      color: "#208DEB"

      Label{
          id: buttonText
          text: "Undefined"
          anchors.centerIn: parent
          color: "#FFFFFF"
          font.pixelSize: 24
      }

      MouseArea{
          anchors.fill: parent
          onPressed: {
              roundRect.color = "#155e9e"
              bottomleftRect.color = "#155e9e"
              toprightRect.color = "#155e9e"
          }
          onReleased: {
              roundRect.color = "#208DEB"
              bottomleftRect.color = "#208DEB"
              toprightRect.color = "#208DEB"
          }
          onClicked: {
              console.log("Button pressed...")
              if(root.state === "Start"){
                  root.state = "PositionRobot"
                  console.log("[State] = Position robot")
                  startClicked()

              }else if(root.state === "PositionRobot"){
                  root.state = "MapSurface"
                  console.log("State MapSurface")
                  mapSurfaceClicked()
              }else if(root.state === "MapSurface"){
                  root.state = "MapRoi"
                  console.log("State MapRoi")
                  mapSurfaceClicked()
              }else if(root.state === "MapRoi"){
                  root.state = "DefineRoi"
              }


          }
      }
    }

    Rectangle {
      id: bottomleftRect

      color: "#208DEB"
      height: roundRect.radius
      width: roundRect.radius

      anchors.bottom : roundRect.bottom
      anchors.left : roundRect.left

    }

    Rectangle {
      id: toprightRect

      color: "#208DEB"
      height: roundRect.radius
      width: roundRect.radius


      anchors.top : roundRect.top
      anchors.right : roundRect.right

    }

    states: [
        State {
            name: "Start"
            PropertyChanges { target: buttonText; text: "START" }
        },
        State {
            name: "PositionRobot"
            PropertyChanges { target: buttonText; text: "MAP SURFACE" }
        },
        State {
            name: "MapSurface"
            PropertyChanges { target: buttonText; text: "MAP ROI" }
        },
        State {
            name: "DefineRoi"
            PropertyChanges { target: buttonText; text: "DEFINE ROI" }
        },
        State {
            name: "MapRoi"
            PropertyChanges { target: buttonText; text: "ROBOT SETTINGS" }
        },
        State {
            name: "SelectModality"
            PropertyChanges { target: buttonText; text: "CVN UT PRESCAN" }
        },
        State {
            name: "UtPreScan"
            PropertyChanges { target: buttonText; text: "START SCAN" }
        }

    ]

}
