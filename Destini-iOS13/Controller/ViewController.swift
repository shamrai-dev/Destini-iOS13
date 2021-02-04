//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showCurrentStory()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let choiceValue = sender.tag
        storyBrain.makeAChoice(choiceValue: choiceValue)
        showCurrentStory()
    }
    
    func showCurrentStory() {
        let currentStory = storyBrain.viewCurrentChoice()
        storyLabel.text = currentStory.title
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice1Button.tag = currentStory.choice1Destination
        choice2Button.setTitle(currentStory.choice2, for: .normal)
        choice2Button.tag = currentStory.choice2Destination
    }
}

