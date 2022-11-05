pragma Singleton

import QtQuick 2.0

QtObject {

    property QtObject regular: FontLoader{
        source: "qrc:/assets/fonts/Atkinson_Hyperlegible/Atkinson-Hyperlegible-Regular-102.ttf"
    }
}
