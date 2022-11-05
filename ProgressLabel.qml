import QtQuick 2.0
import QtQuick.Controls 2.15
import Font 1.0

Label{
    id: root

    property alias text: root.text


    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.bottom
    anchors.topMargin: 10

    text: "default"
    color: "#FFFFFF"
    font.pixelSize: 16
    font.family: Font.regular.name
    horizontalAlignment: Text.AlignHCenter
}
