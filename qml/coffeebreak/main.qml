import QtQuick 2.0

Rectangle {
    id: game
    width: 480
    height: 320

    function randomizeVisibilites(item) {
        if (!item || !item.children) return
        for (var i = 0; i < item.children.length; i++) {
            if (Math.random()*100 < rage && (Math.random() < 0.9)) {
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
    function rageOver99(){
        if(rage > 99){
        return "you lost";

        }
        else return rage
    }

    property int rage : 0





   onRageChanged: randomizeVisibilites(parent)
    /*SequentialAnimation on rage {
        NumberAnimation { from: 0; to: 1; duration: 2500; easing.type: Easing.Linear }
         NumberAnimation { from: 0.9; to: 1; duration: 2500; easing.type: Easing.Linear }
        loops: Animation.Infinite
        running: true
    }*/

/*
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
*/
   property var qLabels: ["qrc:////img/jeff-fishy.png",
       "qrc:////img/jeff-fishy.png",
       "qrc:////img/jeff-fishy.png",
       "qrc:////img/jeff-fishy.png",
       "qrc:////img/jeff-fishy.png",
       "qrc:////img/jeff-fishy.png"]
    Image {
        anchors.top: parent.top
        anchors.fill: parent
        source: qLabels[0]
    }
    Image {
        //anchors.top: parent.top
      // anchors.fill: parent
        id: trunk
        x: 0
        y: 0
        width: parent.width
        height: 400
        source: "qrc:////img/cursor2.png"
        focus: true
        Keys.onPressed: {
                if (event.key == Qt.Key_Right) {
                    x += 10
                    event.accepted = true;
                }
                if (event.key == Qt.Key_Left) {
                    x -= 10
                    event.accepted = true;
                }
                if (event.key == Qt.Key_Up) {
                    y -= 10
                    event.accepted = true;
                }
                if (event.key == Qt.Key_Down) {
                    y += 10
                    event.accepted = true;
                }
                if (event.key == Qt.Key_Return && dialogue.childAt(x, y).hidden != 100) {
                    game.rage += coWorker.get(dialogue.question).answers.get(dialogue.childAt(x, y).hidden).rage
                    dialogue.question = coWorker.get(dialogue.question).answers.get(dialogue.childAt(x, y).hidden).nextQ
                    event.accepted = true;
                }
            }
    }
    Data {
        id: coWorker
    }

    Column {
        id: dialogue
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        //anchors.topMargin: 300

        property int question: 0

        Text {
            width: parent.width
            text: coWorker.get(dialogue.question).question
            anchors.horizontalCenter: parent.horizontalCenter
            wrapMode: Text.WordWrap
            property int hidden: 100
        }
        Text{
            width: parent.width

            text: rageOver99()
            anchors.horizontalCenter: parent.horizontalCenter
            wrapMode: Text.WordWrap


        }



        Repeater {
            model: 4

            Text {
                width: 100
                height: 30
                //buttonid: index
                //correct: quiz.get(question.qNumber).correct == index+1
                text: coWorker.get(dialogue.question).answers.get(index).answer
                //color: getColor()
                property int hidden: index
            }

        }
    }
    Image {
        id: splash
        anchors.top: parent.top
        anchors.fill: parent
        source: "qrc:////img/titel.png"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                splash.visible = false//Qt.quit();\n
            }
        }
    }


}
