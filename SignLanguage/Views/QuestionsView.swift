//
//  QuestionsView.swift
//  
//
//  Created by Justin Vo on 23/4/2022.
//

import SwiftUI

// Quiz Screen
struct QuestionsView: View {
    @StateObject var viewModel = QuizViewModel()
    
    
    var body: some View {
        ZStack {
            // Set up layout
            QuizColor.main.ignoresSafeArea()
            
            VStack {
                Text(viewModel.progressText)
                    .padding()
                Spacer()
                Text(viewModel.questionText)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Image(viewModel.image)
                    .resizable()
                Spacer()
                Spacer()
                HStack {
                    ForEach(viewModel.answerIndices, id: \.self) { index in
                        AnswerButton(text: viewModel.answerText(for: index)) {
                            viewModel.makeSelectionForCurrentQuestion(at: index)
                        }
                        .background(viewModel.colorForButton(at: index))
                        .disabled(viewModel.selectionWasMade)
                    }
                }
                if viewModel.selectionWasMade {
                    Button(action: viewModel.advQuizState,
                           label: {
                            NextText(str: "Next")
                    })
                }
            }.padding(.bottom)
        }
        .background(resultsNavigationLink)
    }
    
    private var resultsNavigationLink: some View {
        NavigationLink(
            destination: ResultsView(viewModel: QuizResults(selectionCount: viewModel.selectionCount, gameStartTime: viewModel.quizStart, gameEndTime: Date())),
            isActive: .constant(viewModel.quizOver),
            label: { EmptyView() })
    }
}

// Create next button
struct AnswerButton: View {
    let text: String
    let onClick: () -> Void
    var body: some View {
        Button(action: {
            onClick()
        }) {
            Text(text)
        }
        .padding()
        .border(Color.blue, width: 4)
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            QuestionsView()
        }
    }
}
