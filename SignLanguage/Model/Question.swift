//
//  Question.swift
//  
//
//  Created by Justin Vo on 21/4/2022.
//

import SwiftUI


// Set up parameter
struct Question: Hashable {
    var questionText: String
    var possibleAnswer: [String]
    var correctAns: Int
    var image: String
    
    // Set up questions, answers, correct answers
    static let allQuestions: [Question] = [
        Question(questionText: "What number is this? (1)", possibleAnswer: [
            "1",
            "2",
            "3",
            "4",
        ], correctAns: 0, image: "number1"),
        Question(questionText: "What number is this? (6)", possibleAnswer: [
            "1",
            "5",
            "6",
            "2",
        ], correctAns: 2, image: "number6"),
        Question(questionText: "What number is this? (10)", possibleAnswer: [
            "5",
            "6",
            "8",
            "10",
        ], correctAns: 3, image: "number10"),
        Question(questionText: "What number is this? (8)", possibleAnswer: [
            "0",
            "6",
            "8",
            "3",
        ], correctAns: 2, image: "number8"),
        Question(questionText: "What number is this? (4)", possibleAnswer: [
            "4",
            "9",
            "10",
            "7",
        ], correctAns: 0, image: "number4"),
    ]
}
