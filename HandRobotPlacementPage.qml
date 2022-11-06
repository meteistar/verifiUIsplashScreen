import QtQuick 2.0

Rectangle {
    id: root

    property bool animStart: false

    anchors.fill: parent
    color: "blue"

    InstructionBlock{
        id: instructionBlock
        animStart: root.animStart
    }

    LiveCameraOverlay{

    }
}
