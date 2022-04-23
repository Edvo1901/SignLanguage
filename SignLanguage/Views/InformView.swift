//
//  InformView.swift
//  
//
//  Created by Justin Vo on 16/4/2022.
//

import SwiftUI

// Set up instruction page
struct InformView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            ScrollView {
                Text("What is Discovery section?")
                    .font(.subheadline).bold()
                Text("\nDiscovery section is where you will find some facts and news about mute and deafen people, which will be update reguarly.\nThis section also include tutorial of basic sign language (count 1-10 in sign language currently), further tutorial will be updated later.\nThis is a right place for you to start your first step one the journey become master in sign language")
                    .font(.footnote)
                Text("\nWhat is Quiz section?")
                    .font(.subheadline).bold()
                Text("\nYour knowledge will be challenge the most under pressure. Challenge your memorize and understanding with some quick quizzes in the Exam section.\nYou will get a random of questions, which requires you to use all what you know about sign language in order to pass the test.\nTry to score an A or B")
                    .font(.footnote)
                Text("\nSome words from developers")
                    .font(.subheadline).bold()
                Text("\nUnderstanding the difficulty of mute and deafen all around the world. I would like to contribute a small effort of myself to help them get closer to community by teaching people basic sign language.\nThis is my first complete application in IOS so the app is not yet optimise and perfect but I believe my effort during the development phase helped myself and community a lots.")
                Text("\n'Get the world connected'\n'No one left behind'\nDeveloped by Vi Dong Vo\nSwift Student Challenge")
                    .font(.title3).bold()
                    .multilineTextAlignment(.center)
            }
            .padding()
            .safeAreaInset(edge: .top, content: {
                Color.clear.frame(height: 70)
            })
            .overlay(
                NavigationBar(title: "Instruction")
            )
            .background(
                Image("informBG")
                    .offset(x: 0, y: 400)
            )
        }
    }
}

struct InformView_Previews: PreviewProvider {
    static var previews: some View {
        InformView()
    }
}
