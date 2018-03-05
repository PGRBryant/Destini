//
//  Question.swift
//  Destini
//
//  Created by Gabriel Bryant on 3/3/18.
//  Copyright © 2018 Phaeroh. All rights reserved.
//

import Foundation

class Question {
    
    //the "value" is broken up into three parts
    let number : Int //this will be single digit that describes the question number
    let paragraph : String //This is whatever story we want to display for this question
    let answers : [Answer]
    
    //Node logic
    var children : [Question] = []
    weak var parent : Question?
    
    init(number: Int, paragraph: String, answers: [Answer]) {
        self.number = number
        self.paragraph = paragraph
        self.answers = answers
    }
    
    func add(child: Question) {
        children.append(child)
        child.parent = self
    }
}

extension Question: CustomStringConvertible {
    var description: String {
        var text = "[\(number), \(paragraph)]"
        
        if !children.isEmpty {
            text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
        }
        
        return text
    }
}

//might need a search and a deletion option? For now, ignore... 
