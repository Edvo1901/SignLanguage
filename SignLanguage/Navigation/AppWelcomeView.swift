//
//  AppWelcomeView.swift
//  
//
//  Created by Justin Vo on 23/4/2022.
//

import SwiftUI

// Create a welcome screen for app
struct AppWelcomeView: View {
    @StateObject var model = Model()
    @State var isDisplay = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                // Set up text and layout
                Text("Welcome to SignLang!")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                    .padding()
                Text("This is a sign language learning app where you can learn basic sign language and test your understand with a few quiz.\n\nThis app is developed by Vi Dong Vo for the purpose of WWDC 2022. Hope you will enjoy my effort!\n\n**Important: Please read the UserManual.md or Information section (in-app) to understand how the app works before moving on.**")
                    .font(.title2)
                    .padding()
                Spacer()
                NavigationLink(
                    destination:
                        ContentView()
                        .environmentObject(Model()),
                    label: {
                        NextText(str: "Get Started!")
                            .padding(.bottom)
                    })
            }
            .background(
                Image("welcome")
                    .offset(x:300)
            )
        }
    }
}

struct AppWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        AppWelcomeView()
    }
}
