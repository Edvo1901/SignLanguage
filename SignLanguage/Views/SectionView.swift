//
//  SectionView.swift
//  
//
//  Created by Justin Vo on 20/4/2022.
//

import SwiftUI

// Set small section for tutorial card
struct SectionView: View {
    var section: LessonSection = lessonSection[0]
    @EnvironmentObject var model: Model
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            ScrollView {
                card
                
                content
                    .padding(.vertical, 80)
            }
            .background(Color.gray)
            .ignoresSafeArea()
            
            button
        }
    }
    
    // Set up the card layout and information
    var card: some View {
        VStack {
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .foregroundColor(.black)
        .background(
            Image(section.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        )
        .background(
            Image(section.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .mask(
            RoundedRectangle(cornerRadius: 0, style: .continuous)
        )
        .overlay(
            VStack(alignment: .leading, spacing: 12) {
                Text(section.subTitle.uppercased())
                    .font(.footnote.weight(.semibold))
                Text(section.title)
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment :.leading)
                Text(section.text.uppercased())
                    .font(.footnote)
                
                Divider()
                    .foregroundColor(.secondary)
                
                // Display personal credit
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .cornerRadius(10)
                        .padding(8)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                    Text("Made by Vi Dong Vo")
                        .font(.footnote.weight(.medium))
                        .foregroundStyle(.secondary)
                }
                .accessibilityElement(children: .combine)
            }
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle( cornerRadius: 30, style: .continuous))
                )
                .offset(y: 250)
                .padding(20)
        )
    }
    
    // Exit button
    var button: some View {
        Button {
            dismiss()
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
    
    // Create content for the card
    var content: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text(section.contentTitle)
                .font(.title).bold()
            Text(section.contentText)
        }
        .padding(20)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
