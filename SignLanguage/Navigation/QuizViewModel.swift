//
//  QuizViewModel.swift
//  
//
//  Created by Justin Vo on 23/4/2022.
//

import SwiftUI

class QuizViewModel: ObservableObject {
    @Published var quiz = Quiz()
    
    // Text for question
    var questionText: String {
        quiz.currentQuestion.questionText
    }
    
    // Image name
    var image: String {
        quiz.currentQuestion.image
    }
    
    // Show all answer
    var answerIndices: Range<Int> {
        quiz.currentQuestion.possibleAnswer.indices
    }
    
    // Show correct answer
    var correctAnswerIndex: Int {
        quiz.currentQuestion.correctAns
    }
    
    // Show current progress
    var progressText: String {
        "Question \(quiz.currentQuestionIndex + 1) / \(quiz.questionCount)"
    }
    
    // Indicate selection
    var selectionWasMade: Bool {
        quiz.selections[quiz.currentQuestion] != nil
    }
    
    // Count selection
    var selectionCount: (Int, Int) {
        quiz.selectionCount
    }
    
    // Track quiz status
    var quizOver: Bool {
        quiz.quizIsOver
    }
    
    // Record start time
    var quizStart: Date {
        quiz.startTime
    }
    
    // Show possible answer for current question
    func answerText(for index: Int) -> String {
        quiz.currentQuestion.possibleAnswer[index]
    }
    
    func advQuizState() {
        quiz.advanceQuizState()
    }
    
    func makeSelectionForCurrentQuestion(at index: Int) {
        quiz.makeSelection(at: index)
    }
    
    // Change color button depend on the choice
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let selectedIndex = quiz.selections[quiz.currentQuestion], selectedIndex == buttonIndex else { return .clear }
        if selectedIndex == correctAnswerIndex {
            return .green
        } else {
            return .red
        }
    }
}
