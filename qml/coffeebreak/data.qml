import QtQuick 2.0

ListModel {
    id: coWorker
    ListElement {
        question:"Hi Elliott. Great that you agreed to brainstorm on the new project during break."
        answers:
            [ListElement {answer:"How dare you?!"
                          rage: 10
                          nextQ:[]
            },

            ListElement {
                        answer:"Well, there has to be at least one brain."
                        rage : 25
                        nextQ: []
            },

            ListElement {
                        answer:"Super, I'm eager to work"
                        rage: -5
                        nextQ: []

            },
            ListElement {
                        answer:"Well, you look like your brain has been blown away."
                        rage: 15
                        nextQ: []

            }]



    }

    ListElement {
        question:"Have you named named the project: >>Super Project<< ?"
        answers:
            [ListElement {answer:"Aarg! How dare you?! *Smash*"
                          rage: 10
                          nextQ:[]
            },

            ListElement {
                        answer:"Wow, what a great name!"
                        rage : 1
                        nextQ: []
            },

            ListElement {
                        answer:"That is ridiculous"
                        rage: 5
                        nextQ: []

            },
            ListElement {
                        answer: "More like >>Stupid Project<< ?"
                        rage: 15
                        nextQ: []

            }]



    }
    ListElement {
        question:""
        answers:
            [ListElement {
                         answer:"How dare you?!"
                         rage: 10
                         nextQ:[]
            },

            ListElement {
                        answer:"Well, there has to be at least one brain."
                        rage : 25
                        nextQ: []
            },

            ListElement {
                        answer:"Super, I'm eager to work"
                        rage: -5
                        nextQ: []

            },
            ListElement {
                        answer:"Well, you look like your brain has been blown away."
                        rage: 15
                        nextQ: []

            }]



    }
}
