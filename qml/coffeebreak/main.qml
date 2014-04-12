import QtQuick 2.0

Rectangle {
    width: 360
    height: 360

    function randomizeVisibilites() {
        for (var i = 0; i < children.length; i++)
            if (Math.random() < rage)
             children[i].visible = !(children[i].visible)
    }

    property int rage : 0
    onRageChanged: randomizeVisibilites()
    NumberAnimation on rage { from: 0; to: 1; duration: 25000; easing.type: Easing.Linear }

    Text {
        id: splash
        text: qsTr("Coffee break!!!!")
        anchors.centerIn: parent
    }
    Text  {
        id: instruction
        text: qsTr("asdasd \nasdasda")
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            splash.visible = false//Qt.quit();
        }
    }
}
