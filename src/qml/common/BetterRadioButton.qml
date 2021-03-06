import QtQuick 2.9
import QtQuick.Controls 2.2

RadioButton {
    id: root

    property bool allowUncheck: false

    property bool _uncheck: false

    onPressed: {
        if (allowUncheck && checked) {
            _uncheck = true
        }
    }

    onReleased: {
        if (_uncheck) {
            checked = false
            _uncheck = false
        }
    }

    indicator: Rectangle {
           implicitWidth: 16
           implicitHeight: 16
           x: root.leftPadding
           y: parent.height / 2 - height / 2
           radius: 8
           border.color: root.down ? "grey" : "#ccccc"

           Rectangle {
               width: 10
               height: 10
               x: 3
               y: 3
               radius: 5
               color: root.down ? "grey" : "#ccccc"
               visible: root.checked
           }
       }
}
