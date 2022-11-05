import QtQuick 2.0
import QtQuick.Controls 2.15

Item {

    Rectangle {
      id: roundRect
      radius: 20
      width: 272 ; height: 64
      color: "#208DEB"
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
}
