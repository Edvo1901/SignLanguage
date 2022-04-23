//
//  DiscoveryView.swift
//  
//
//  Created by Justin Vo on 16/4/2022.
//

import SwiftUI

// Set up discovery page
struct DiscoveryView: View {
    @Namespace var spacing
    @State var isDisplay = false
    @State var showStatusBar = true
    @State var selectedID = UUID()
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack {
            Color(.white)
            
            ScrollView {
                featured
                
                Text("All lesson".uppercased())
                    .font(.footnote.weight(.semibold))
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                
                // Display custom screen based on current status
                if !isDisplay {
                    cards
                } else {
                    details
                }
            }
            .safeAreaInset(edge: .top, content: {
                Color.clear.frame(height: 70)
            })
            .overlay(
                // Set title
                NavigationBar(title: "Discovery")
            )
            
            if isDisplay {
                // Display selected card
                ForEach(discoveryNews) { item in
                    if item.id == selectedID {
                        LessonView(spacing: spacing, discovery: item, isDisplay: $isDisplay)
                            .zIndex(1)
                        .transition(.asymmetric(insertion: .opacity.animation(.easeInOut(duration:0.1)), removal: .opacity.animation(.easeInOut(duration: 0.3).delay(0.2))))
                    }
                }
            }
        }
        .statusBar(hidden: !showStatusBar)
        .onChange(of: isDisplay) { newValue in
            withAnimation(.closeCard) {
                if newValue {
                    showStatusBar = false
                } else {
                    showStatusBar = true
                }
            }
        }
    }
    
    // Display card
    var featured: some View {
        TabView {
            ForEach(discoveryItem) { item in
                MainView(discovery: item)
            }
        }
        .tabViewStyle(.page)
        .frame(height: 430)
        .background(
            Image("appBackground")
                .offset(x: 0, y: 600)
        )
    }
    
    // Display card
    var cards: some View {
        ForEach(discoveryNews) { item in
            Lesson(spacing: spacing, discovery: item, isDisplay: $isDisplay)
                .onTapGesture  {
                    withAnimation(.openCard) {
                        isDisplay.toggle()
                        model.showDetail.toggle()
                        showStatusBar = false
                        selectedID = item.id
                    }
            }
        }
    }
    
    // Display details of each card
    var details: some View {
        ForEach(discoveryNews) { item in
            Rectangle()
                .fill(.white)
                .frame(height: 300)
                .cornerRadius(30)
                .shadow(color: Color("Shadow"), radius: 20, x: 0, y: 10)
                .opacity(0.3)
                .padding(.horizontal, 30)
        }
    }
}

struct DiscoveryView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryView()
            .environmentObject(Model())
    }
}
