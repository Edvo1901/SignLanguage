//
//  ResultsView.swift
//  
//
//  Created by Justin Vo on 23/4/2022.
//


//
//  ResultsView.swift
//  QuizApp
//
//  Created by Ben Stone on 8/25/21.
//

import SwiftUI

// Display results
struct ResultsView: View {
    let viewModel: QuizResults
    
    var body: some View {
        ZStack {
            // Show all stats
            QuizColor
                .main.ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Text("Final Score: ")
                    Text(viewModel.finalPercentText)
                }
                .font(.title)
                .padding()
                HStack {
                    Text("Grade: ")
                    Text(viewModel.finalGrades)
                }
                .padding()
                .font(.title)
                Text(viewModel.correctSelectionText)
                    .font(.system(size: 30))
                Text(viewModel.incorrectSelectionText)
                    .font(.system(size: 30))
                Text("Total time: \(viewModel.totalTime)")
                Spacer()
                Text("**Slide this screen down to close the quiz**")
                NavigationLink(
                    destination: QuestionsView(),
                    label: {
                        NextText(str: "Re-take Quiz")
                            .padding(.bottom)
                    })
            }
        }
        .navigationBarHidden(true)
    }
}


struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ResultsView(viewModel: QuizResults(selectionCount: (3,1), gameStartTime: Date(), gameEndTime: Date()))
        }
    }
}

