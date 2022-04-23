//
//  WelcomeView.swift
//  
//
//  Created by Justin Vo on 23/4/2022.
//

import SwiftUI


// Welcome view for quiz
struct WelcomeView: View {

    var body: some View {
        NavigationView {
            ZStack {
                QuizColor.main.ignoresSafeArea()
                VStack {
                    Text("Quiz Time!")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                        .padding()
                    Text("Select the correct answer to each of the following questions.")
                        .font(.title2)
                        .padding()
                    Spacer()
                    NavigationLink(
                        destination: QuestionsView(),
                        label: {
                            NextText(str: "Let's Go!")
                                .padding(.bottom)
                        })
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
