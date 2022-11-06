import QtQuick 2.0

Rectangle {
    id: root

    property bool animStart: false

    anchors.fill: parent

    Image {
        id: sampleImage
        source: "qrc:/assets/images/static sample image.png"
        smooth: true
    }

    InstructionBlock{
        id: placementWarning
        animStart: root.animStart
    }

    LiveCameraOverlay{

    }
}
