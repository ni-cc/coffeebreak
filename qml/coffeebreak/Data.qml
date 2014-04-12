import QtQuick 2.0

ListModel {
    id: coWorker
    //0
    ListElement {
        question:"Hi Elliott. Great that you agreed to brainstorm on the new project during break."
        answers:
            [ListElement {answer:"How dare you?!"
                          rage: 10
                          nextQ:[1]
            },

            ListElement {
                        answer:"Well, there has to be at least one brain."
                        rage : 25
                        nextQ: [4]
            },

            ListElement {
                        answer:"Super, I'm eager to work"
                        rage: -5
                        nextQ: [1]

            },
            ListElement {
                        answer:"Well, you look like your brain has been blown away."
                        rage: 15
                        nextQ: [4]

            }]



    }
    //1
    ListElement {
        question:"Have you named named the project: >>Super Project<< ?"
        answers:
            [ListElement {answer:"Aarg! How dare you?! *Smash*"
                          rage: 40
                          nextQ:[5]
            },

            ListElement {
                        answer:"Wow, what a great name!"
                        rage : 1
                        nextQ: [5]
            },

            ListElement {
                        answer:"That is ridiculous"
                        rage: 5
                        nextQ: [7]

            },
            ListElement {
                        answer: "More like >>Stupid Project<< ?"
                        rage: 15
                        nextQ: [7]

            }]



    }
    //2
    ListElement {
        question:"I knew, the Boss said we need to be done by the end of the week but my holidays starts tomorrow!"
        answers:
            [ListElement {
                         answer:"*SMASH!*"
                         rage: 10
                         nextQ:[]
            },

            ListElement {
                        answer:"Oh, that's alright - I'll get it done in time!"
                        rage : 1
                        nextQ: [3]
            },

            ListElement {
                        answer:"Okay, I don't need you at all!"
                        rage: 30
                        nextQ: []

            },
            ListElement {
                        answer:"I hope your plane crashes >>Buddy<<! "
                        rage: 15
                        nextQ: []

            }]
    }
    //3
    ListElement {
        question:"Great, see you next mounth!"
        answers:
            [ListElement {
                         answer:"*SMASH*!"
                         rage: 20
                         nextQ:[]
            },

            ListElement {
                        answer:"Have a great holiday!"
                        rage : 1
                        nextQ: [7]
            },

            ListElement {
                        answer:"YOU ARE THE WORST COWORKER EVER!"
                        rage: 30
                        nextQ: []

            },
            ListElement {
                        answer:"I will run over your cat!"
                        rage: 35
                        nextQ: []

            }]
    }

    //4.
    ListElement {
        question:"Great… I have already named the project: >>Elliot the dumb elephant<<"
        answers:
            [ListElement {
                         answer:"*SMASH!*"
                         rage: 10
                         nextQ:[]
            },

            ListElement {
                        answer:"Oh, that's alright!"
                        rage : 5
                        nextQ: [5]
            },

            ListElement {
                        answer:"How about >>Jeff the useless CoWorker<<!"
                        rage: 30
                        nextQ: [6]

            },
            ListElement {
                        answer:"That name is ridiculous! "
                        rage: 15
                        nextQ: []

            }]
    }
    //5.
    ListElement {
        question:"What do you think about doing the rest of the work, I already did the hard part!"
        answers:
            [ListElement {
                         answer:"*SMASH!*"
                         rage: 10
                         nextQ:[]
            },

            ListElement {
                        answer:"Oh, that's alright - I'll get it done in time!"
                        rage : 1
                        nextQ: []
            },

            ListElement {
                        answer:"Nope! You never to something useful"
                        rage: 30
                        nextQ: []

            },
            ListElement {
                        answer:"You, are kidding right?!"
                        rage: 5
                        nextQ: [6]

            }]
    }
    //6
    ListElement {
        question:"No, I don't. I knew, the Boss said we need to be done by the end of the week but my holidays starts tomorrow!"
        answers:
            [ListElement {
                         answer:"*SMASH!* *SMASH!* *SMASH!* *SMASH!*"
                         rage: 40
                         nextQ:[3]
            },

            ListElement {
                        answer:"Oh, that's alright - I'll get it done in time!"
                        rage : -10
                        nextQ: [3]
            },

            ListElement {
                        answer:"Okay, kill yourself!"
                        rage: 30
                        nextQ: [3]

            },
            ListElement {
                        answer:"I hope your plane crashes my fishy friend! "
                        rage: 15
                        nextQ: [3]

            }]
    }
    //7
    ListElement {
        question:"Now I have done the hard part I think you can take it from here and do the rest, ok boddy?"
        answers:
            [ListElement {
                         answer:"Aarg! *SMASH*"
                         rage: 10
                         nextQ:[]
            },

            ListElement {
                        answer:"You are kidding right?"
                        rage : 5
                        nextQ: []
            },

            ListElement {
                        answer:"Oh,I will do it partner"
                        rage: -10
                        nextQ: []

            },
            ListElement {
                        answer:"I will give you my hard part! "
                        rage: 45
                        nextQ: [6]

            }]
    }
//8
    ListElement {
        question:"Now I have done the hard part I think you can take it from here and do the rest, ok buddy?"
        answers:
            [ListElement {
                         answer:"Aarg! *SMASH*"
                         rage: 10
                         nextQ:[]
            },

            ListElement {
                        answer:"You are kidding right?"
                        rage : 5
                        nextQ: []
            },

            ListElement {
                        answer:"Oh,I will do it partner"
                        rage: -10
                        nextQ: []

            },
            ListElement {
                        answer:"I'll do the REST. After I did your mom!"
                        rage: 50
                        nextQ: []

            }]
    }
    //9
    ListElement {
        question:"Now I have done the hard part I think you can take it from here and do the rest, ok boddy?"
        answers:
            [ListElement {
                         answer:"Aarg! *SMASH*"
                         rage: 10
                         nextQ:[]
            },

            ListElement {
                        answer:"There is one problem, I deleted the whole project."
                        rage : 100
                        nextQ: []
            },

            ListElement {
                        answer:"Oh,I will do it partner"
                        rage: -10
                        nextQ: []

            },
            ListElement {
                        answer:"I will give you my hard part! "
                        rage: 15
                        nextQ: []

            }]
    }
    //10
}
