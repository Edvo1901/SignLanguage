//
//  QuizView.swift
//  
//
//  Created by Justin Vo on 16/4/2022.
//

import SwiftUI

// Layout for Quiz section
struct QuizView: View {
    @State var show = false
    @State var showSection = false
    @State var correctAns = 0
    @State var wrongAns = 0
    @State var answered = 0
    
    var body: some View {
        ScrollView {
            VStack {
                // Set title
                Text("Challenge your knowledge")
                    .font(.system(size: 23))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.top)
                Text("Swift Student Challenge 2022")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.top, 8)
                
                Spacer(minLength: 0)
                
                // Show level of the quiz
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 35, content: {
                    ForEach(1...4, id: \.self) { index in
                        // Only show the 1st quiz
                        if index == 1 {
                            VStack(spacing: 15) {
                                Image("quiz1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 150)
                                Text("Challenge")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                                Text("Available")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.blue)
                                Text("Level 1")
                                    .foregroundColor(.black)
                                
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white.opacity(0.9))
                            .cornerRadius(15)
                            // Open Quiz view when clicked
                            .onTapGesture (perform: {
                                show.toggle()
                                showSection = true
                            })
                            .sheet(isPresented: $showSection) {
                                WelcomeView()
                            }
                        } else {
                            VStack(spacing: 15) {
                                Image("quiz\(index)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 150)
                                Text("Challenge")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                                Text("(Update later)")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.red)
                                Text("Level \(index)")
                                    .foregroundColor(.black)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(15)
                        }
                    }
                })
                .padding()
                
                Spacer(minLength: 0)
            }
            .background(
                Image("quizBG")
            )
            
        }
        .safeAreaInset(edge: .top, content: {
            Color.clear.frame(height: 70)
        })
        // Set title for the page
        .overlay(
            NavigationBar(title: "Quiz")
        )
    }
}
