import QtQuick 2.0
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15

Item {
    id: root

    signal mapSurfaceFinished

    anchors.fill: parent

    Image {
        id: sampleImage
        source: "qrc:/assets/images/static sample image.png"
        smooth: true
    }

    ColorOverlay{
            id: overlay
            anchors.fill: sampleImage
            source: sampleImage
            color: "#208DEB"
            opacity: 0.3
    }

    Button{
        onClicked: {first.state = "filled"
            root.mapSurfaceFinished()
        }
    }
    Button{
        y: 100
        onClicked: {second.state = "filled"
            root.mapSurfaceFinished()
        }
    }
    Grid{
        width: 290 ; height: 290
        anchors.centerIn: parent
        columns: 3
        spacing: 10
        SubProgressBox{
            id: first
        }
        SubProgressBox{
            id: second
        }
        SubProgressBox{

        }
        SubProgressBox{

        }
        SubProgressBox{

        }
        SubProgressBox{

        }
        SubProgressBox{

        }
        SubProgressBox{

        }
        SubProgressBox{

        }
    }
}
