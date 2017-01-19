import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4
import "views" as Views

ApplicationWindow {
    visible: true
    width: 500
    height: 500
    title: qsTr("Snake")

    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: "#4DB6AC" }
            GradientStop { position: 1; color: "#004D40" }
        }
    }

    StackView {
        id: stackView
        focus: true
        initialItem: Views.MenuView {}
        anchors.fill: parent
        onCurrentItemChanged: {
            currentItem.focus = true
        }
    }
}
