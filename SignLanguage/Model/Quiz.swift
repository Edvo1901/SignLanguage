//
//  Quiz.swift
//  
//
//  Created by Justin Vo on 23/4/2022.
//

import Foundation

struct Quiz {
    var startTime = Date()
    private let questions = Question.allQuestions.shuffled()
    private(set) var currentQuestionIndex = 0
    private(set) var selections = [Question: Int]()
    var quizIsOver = false
    
    // Count the choice of user
    var selectionCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, selectedIndex) in selections {
            if selectedIndex == question.correctAns {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    // Count total question
    var questionCount: Int {
        questions.count
    }
    
    // Track back current question
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    // Track back the quiz progress
    mutating func advanceQuizState() {
        let nextQuestionIndex = currentQuestionIndex + 1
        if !questions.indices.contains(nextQuestionIndex) {
            quizIsOver = true
        } else {
            currentQuestionIndex = nextQuestionIndex
        }
    }
    
    mutating func makeSelection(at index: Int) {
        selections[currentQuestion] = index
    }
}
