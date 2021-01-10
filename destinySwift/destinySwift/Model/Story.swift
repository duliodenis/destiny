//
//  Story.swift
//  destinySwift
//
//  Created by Dulio Denis on 1/3/21.
//

import Foundation

struct Story {
    var title: String
    var choice1: String
    var choice2: String
    
    init(t: String, c1: String, c2: String) {
        title = t
        choice1 = c1
        choice2 = c2
    }
}
