import QtQuick 2.0

ListModel {
    id: quiz

    ListElement {
        question:"Which "
        answers:
            [ListElement {answer:"Ita"}, ListElement {answer:"Swe"}, ListElement {answer:""}, ListElement {answer:""}]
        correct:1
        additionalInfo:"56% o"
    }

    ListElement {
        question:"What is )"
        answers:
            [ListElement {answer:""}, ListElement {answer:""}, ListElement {answer:""}, ListElement {answer:""}]
        correct:2
        additionalInfo:
            "Inflation is)"
    }
}
