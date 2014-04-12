import QtQuick 2.0

Text {
    width: 100
    height: 30

    MouseArea {
        anchors.fill: parent
        onClicked: {
            game.rage += coWorker.get(dialogue.question).answers.get(index).rage
            dialogue.question = coWorker.get(dialogue.question).answers.get(index).nextQ
            //question.wasCorrect = correct;
        }
    }
}
