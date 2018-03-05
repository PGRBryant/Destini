//
//  Answer.swift
//  Destini
//
//  Created by Gabriel Bryant on 3/3/18.
//  Copyright © 2018 Phaeroh. All rights reserved.
//

import Foundation

class Answer {
    
    let tag : Character //keeps track of the 'header' option for the answer
    let phrase : String //The actual wording of the answer 
    
    init(tag: Character, phrase: String) {
        self.tag = tag
        self.phrase = phrase
    }
    
}
