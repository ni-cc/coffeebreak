import QtQuick 2.0

Rectangle {
    width: 480
    height: 320

    function randomizeVisibilites(item) {
        if (!item || !item.children) return
        for (var i = 0; i < item.children.length; i++) {
            if (Math.random() < rage && (Math.random() < 0.9)) {
                if (Math.random() < 0.5) {
                    item.children[i].visible = true
                    randomizeVisibilites(item.children[i])
                } else  {
                    item.children[i].visible = false
                    turnOnVisibilites(item.children[i])
                }
            }
        }
    }

    function turnOnVisibilites(item) {
        if (!item || !item.children) return
        for (var i = 0; i < item.children.length; i++) {
                    item.children[i].visible = true
                    turnOnVisibilites(item.children[i])
            }
    }

    property int rage : 0
   //onRageChanged: randomizeVisibilites(parent)
    SequentialAnimation on rage {
        NumberAnimation { from: 0; to: 1; duration: 2500; easing.type: Easing.Linear }
         NumberAnimation { from: 0.9; to: 1; duration: 2500; easing.type: Easing.Linear }
        loops: Animation.Infinite
        running: true
    }


    Text {
        id: splash
        text: qsTr("Coffee break!!!!")
        anchors.centerIn: parent
    }
    Text  {
        id: instruction
        text: qsTr("d")
        anchors.centerIn: parent
    }

    Image {
        anchors.top: parent.top
        anchors.fill: parent
        source: "qrc:////img/jeff-fishy.png"
    }

    Data {
        id: coworker
    }

    Column {
        id: dialogue
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        //anchors.topMargin: 300

        property int question: 0

        Text {
            text: coworker.get(dialogue.question).question
            anchors.horizontalCenter: parent.horizontalCenter
        }



        Repeater {
            model: 4

            Answer {
                //buttonid: index
                //correct: quiz.get(question.qNumber).correct == index+1
                text: coworker.get(dialogue.question).answers.get(index).answer
            }

        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            splash.visible = false//Qt.quit();\n
        }
    }
}
