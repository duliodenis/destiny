//
//  StoryBrain.swift
//  destinySwift
//
//  Created by Dulio Denis on 1/3/21.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [Story(t: "You see a fork in the road.", c1: "Take a left", c2: "Take a right"),
                   Story(t: "You see a tiger", c1: "Shout for help", c2: "Play dead"),
                   Story(t: "You find a treasure cheast.", c1: "Open it", c2: "Check for traps")
    ]
    
    mutating func nextStory(userChoice: String) {
        if (storyNumber < stories.count) {
            if (userChoice == stories[storyNumber].choice1) { storyNumber += 1 }
            else { storyNumber += 2 }
        }
    }
    
    func isMoreStories() -> Bool {
        if storyNumber < stories.count { return true}
        return false
    }
    
    func currentStory() -> Story {
        return stories[storyNumber]
    }
}
