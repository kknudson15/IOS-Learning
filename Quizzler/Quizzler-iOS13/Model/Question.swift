//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Kyle Knudson on 7/3/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text : String
    let answers : [String]
    let correctAnswer : String
    
    init(q: String, a: [String], c: String) {
        text = q
        answers = a
        correctAnswer = c
    }
}
