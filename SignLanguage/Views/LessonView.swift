//
//  LessonView.swift
//  
//
//  Created by Justin Vo on 19/4/2022.
//

import SwiftUI

struct LessonView: View {
    // Delecare parameter
    var spacing: Namespace.ID
    var discovery: Discovery = discoveryNews[0]
    var section: LessonSection = lessonSection[0]
    @Binding var isDisplay: Bool
    @State var appear = [false, false, false]
    @State var showSection = false
    @State var selectedIndex = 0
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack {
            ScrollView {
                card
                
                content
                    .offset(y: 120)
                    .padding(.bottom, 200)
                    .opacity(appear[2] ? 1 : 0 )
            }
            .background(Color.gray)
            .ignoresSafeArea()
            
            button
        }
        // Sync animation
        .onAppear {
            withAnimation(.easeOut.delay(0.3)) {
                appear[0] = true
            }
            withAnimation(.easeOut.delay(0.4)) {
                appear[1] = true
            }
            withAnimation(.easeOut.delay(0.5)) {
                appear[2] = true
            }
        }
        .onChange(of: isDisplay) { newValue in
            appear[0] = true
            appear[1] = true
            appear[2] = true
        }
    }
    
    // Display custom information based on data
    var card: some View {
        VStack {
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .foregroundColor(.black)
        .background(
            Image(discovery.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "subBackground\(discovery.id)", in: spacing)
        )
        .background(
            Image(discovery.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "background\(discovery.id)", in: spacing)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "image\(discovery.id)", in: spacing)
        )
        .overlay(
            VStack(alignment: .leading, spacing: 12) {
                Text(discovery.subTitle.uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subTitle\(discovery.id)", in: spacing)
                Text(discovery.title)
                    .font(.largeTitle.weight(.bold))
                    .matchedGeometryEffect(id: "title\(discovery.id)", in: spacing)
                    .frame(maxWidth: .infinity, alignment : .leading)
                Text(discovery.text.uppercased())
                    .font(.footnote)
                    .matchedGeometryEffect(id: "text\(discovery.id)", in: spacing)
                
                Divider()
                    .opacity(appear[0] ? 1 : 0)
                
                // Display credit information
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .cornerRadius(10)
                        .padding(8)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                    Text("Made by Vi Dong Vo")
                        .font(.footnote)
                }
                .opacity(appear[1] ? 1 : 0)
            }
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle( cornerRadius: 30, style: .continuous))
                        .matchedGeometryEffect(id: "colorBg\(discovery.id)", in: spacing)
                )
                .offset(y: 250)
                .padding(20)
        )
    }
    
    var content: some View {
        VStack(alignment: .leading) {
            ForEach(Array(lessonSection.enumerated()), id: \.offset) {index, section in
                // Limited access to the first card only
                if discovery.contentID == 1 {
                    if index != 0 {Divider()}
                    SectionRow(section: section)
                        .onTapGesture {
                            selectedIndex = index
                            showSection = true
                    }
                }
            }
        }
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .padding(20)
        .sheet(isPresented: $showSection) {
            SectionView(section: lessonSection[selectedIndex])
        }
    }
    
    // Exit button
    var button: some View {
        Button {
            withAnimation(.closeCard) {
                isDisplay.toggle()
                model.showDetail.toggle()
            }
        } label: {
            Image(systemName: "xmark")
                .font(.body.weight(.bold))
                .foregroundColor(.secondary)
                .padding(8)
                .background(.ultraThinMaterial, in: Circle())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        .padding(20)
        .ignoresSafeArea()
    }
}

struct LessonView_Previews: PreviewProvider {
    @Namespace static var spacing
    
    static var previews: some  View {
        LessonView(spacing: spacing, isDisplay: .constant(true))
            .environmentObject(Model())
    }
}
