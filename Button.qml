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
                  root.state = "MapSurface"
                  startClicked()

              }else if(root.state === "MapSurface"){
                  root.state = "MapRoi"
                  mapSurfaceClicked()
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
            PropertyChanges { target: buttonText; text: "Start" }
        },
        State {
            name: "MapSurface"
            PropertyChanges { target: buttonText; text: "MapSurface" }
        }
    ]

}
