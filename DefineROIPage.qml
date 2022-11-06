import QtQuick 2.0

Item {
    id: root

    property bool animStart: false

    anchors.fill: parent

    Image {
        id: sampleImage
        source: "qrc:/assets/images/static sample image.png"
        smooth: true
    }

    InstructionBlock{
        id: roiWarning
        animStart: root.animStart
        text: "do not obstruct robot camera view.
                Define region of interest by drawing a rectangle on the workpiece image"
    }

    RoiBoxDefault{

    }
}
