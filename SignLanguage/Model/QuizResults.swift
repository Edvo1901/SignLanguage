//
//  QuizResults.swift
//  
//
//  Created by Justin Vo on 23/4/2022.
//

import Foundation

struct QuizResults {
    let selectionCount: (correct: Int, incorrect: Int)
    let gameStartTime: Date
    let gameEndTime: Date
    
    // Show percents
    var finalPercentText: String {
        "\(score) %"
    }
    
    // Show grades base on percent
    var finalGrades: String {
        switch score {
        case 90...100: return "A"
        case 80..<90: return "B"
        case 70..<80: return "C"
        case 60..<70: return "D"
        case 0..<60: return "F"
        default: return "?"
        }
    }
    
    // Count correct answer
    var correctSelectionText: String {
        "\(selectionCount.correct) ✅"
    }
    
    // Count wrong answer
    var incorrectSelectionText: String {
        "\(selectionCount.incorrect) ❌"
    }
    
    // Count total time took to complete quiz
    var totalTime: String {
        "\(Int(gameEndTime.timeIntervalSince(gameStartTime))) seconds"
    }
    
    // Calculate final score
    private var score: Int {
        selectionCount.correct * 100 / (selectionCount.correct + selectionCount.incorrect)
    }
}
