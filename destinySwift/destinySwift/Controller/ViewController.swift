//
//  ViewController.swift
//  destinySwift
//
//  Created by Dulio Denis on 1/3/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: String((sender.titleLabel?.text)!))
        updateUI()
    }
    
    func updateUI() {
        if storyBrain.isMoreStories() {
            let storyText = storyBrain.currentStory()
            storyLabel.text = storyText.title
            choice1Button.setTitle(storyText.choice1, for: .normal)
            choice2Button.setTitle(storyText.choice2, for: .normal)
        }
    }
}

