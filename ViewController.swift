//
//  ViewController.swift
//  Destini
//
//  Created by Gabriel Bryant on 3/3/18.
//  Copyright © 2018 Phaeroh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 0
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 1
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    var myStory: Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restart()
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        //move the story along
        myStory!.currentQuestion = myStory!.currentQuestion.children[sender.tag]
        updateUI()
    }
    
    @IBAction func restartPressed(_ sender: Any) {
        restart()
    }
    
    //restart the story from the beginning, and hide the restart button
    func restart() {
        myStory = Story()
        topButton.alpha = 1
        bottomButton.alpha = 1
        restartButton.alpha = 0
        
        updateUI()
    }
    
    //update the story label and the question labels, hide them if appropriate, and show a "restart" button if the game is at the end
    func updateUI() {
        storyTextView.text = myStory!.currentQuestion.paragraph
        
        //if it has children, the story isn't over
        if myStory!.currentQuestion.children.count != 0 {
            topButton.setTitle(myStory!.currentQuestion.answers[0].phrase, for: .normal)
            bottomButton.setTitle(myStory!.currentQuestion.answers[1].phrase, for: .normal)
        } else {
            topButton.alpha = 0
            bottomButton.alpha = 0
            restartButton.alpha = 1
        }
    }
    
    
    
}

