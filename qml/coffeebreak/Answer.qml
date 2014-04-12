import QtQuick 2.0

Text {
    width: 100
    height: 30

    MouseArea {
        anchors.fill: parent
        onClicked: {
            rage += coworker.get(dialogue.question).answers.get(index).rage
            dialogue.question = coworker.get(dialogue.question).answers.get(index).nextQ.get(0)
            //question.wasCorrect = correct;
        }
    }
}
