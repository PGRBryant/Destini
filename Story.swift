//
//  Story.swift
//  Destini
//
//  Created by Gabriel Bryant on 3/3/18.
//  Copyright © 2018 Phaeroh. All rights reserved.
//

//Review button ? Puts it all in a little timeline

// Setup the entire story

import Foundation

class Story {
    
    var currentQuestion = Question(number: 0, paragraph: "", answers: [])
    
    init() { //generate the whole story
        
        // Our story elements
        let story1 = Question(number: 1,
                              paragraph: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
                              answers: [Answer(tag: "a", phrase: "I\'ll hop in. Thanks for the help!"),
                                        Answer(tag: "b", phrase: "Better ask him if he\'s a murderer first.")])
        
        let story2 = Question(number: 2,
                              paragraph: "He nods slowly, unphased by the question.",
                              answers: [Answer(tag: "a", phrase: "At least he\'s honest. I\'ll climb in."),
                                        Answer(tag: "b", phrase: "Wait, I know how to change a tire.")])
        
        let story3 = Question(number: 3,
                              paragraph: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                              answers: [Answer(tag: "a", phrase: "I love Elton John! Hand him the cassette tape."),
                                        Answer(tag: "b", phrase: "It\'s him or me! You take the knife and stab him.")])
        
        let story4 = Question(number: 4,
                              paragraph: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                              answers: [])
        
        let story5 = Question(number: 5,
                              paragraph: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                              answers: [])
        
        let story6 = Question(number: 6,
                              paragraph: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"",
                              answers: [])
        
        let story7 = Question(number: 7,
                              paragraph: "With a little hesitation you close the door. He begins to drive down a winding road, glancing at you sideways. You try to think of something to break the silence of riding with a murderer. Why did you get in the car with this guy? Wasn't it better to just be lost? The tension in the air is palpatle, you're certain if you don't say something soon he\'ll kill you out of boredom.",
                              answers: [Answer(tag: "a", phrase: "Ask him about his pet dogs."),
                                        Answer(tag: "b", phrase: "Ask him about his parents.")])
        
        let story8 = Question(number: 8,
                              paragraph: "He begins to tell you a long, sad story about his best friend in childhood. Buster was the best thing that ever happened to him. His only confidant. He had completely forgotten about that wonderful animal that brought meaning to his life. He drives to the police station and turns himself in. You've made the world a better place.",
                              answers: [])
        
        let story9 = Question(number: 9,
                              paragraph: "He calmly and without emotion says, \"I hated my parents. Now you die.\" Faster than you can blink, he swerves the car, opens your door, unclicks your seatbelt, and kicks you over a cliff. As you plumment toward your doom, you hope the next person he picks up doesn't mention his parents.",
                              answers: [])
        
        //build the tree
        story1.add(child: story3)
        story1.add(child: story2)
        
        story3.add(child: story6)
        story3.add(child: story5)
        
        story2.add(child: story7)
        story2.add(child: story4)
        
        story7.add(child: story8)
        story7.add(child: story9)
        
        currentQuestion = story1
//        print(currentQuestion)
        
    }
}
