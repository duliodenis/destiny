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
    
    let stories = [Story(t: "You see a fork in the road.", c1: "Take a left", c2: "Take a right"),
                      Story(t: "You see a tiger", c1: "Shout for help", c2: "Play dead"),
                      Story(t: "You find a treasure cheast.", c1: "Open it", c2: "Check for traps")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let opening = stories.first!
        storyLabel.text = opening.title
        choice1Button.setTitle(opening.choice1, for: .normal)
        choice2Button.setTitle(opening.choice2, for: .normal)
    }
}

