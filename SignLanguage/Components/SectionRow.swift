//
//  SectionRow.swift
//  
//
//  Created by Justin Vo on 20/4/2022.
//

import SwiftUI

// Create small section in tutorial card
struct SectionRow: View {
    var section: LessonSection = lessonSection[0]
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            // Set up layout
            Image(section.logo)
                .resizable()
                .frame(width: 36, height: 36)
                .mask(Circle())
                .padding(12)
                .background(Color(UIColor.systemBackground).opacity(0.3))
                .mask(Circle())
                .overlay(CircularView(value: section.progress))
            VStack(alignment: .leading, spacing: 8) {
                Text(section.subTitle)
                    .font(.caption.weight(.medium))
                .foregroundColor(.secondary)
                Text(section.title)
                    .fontWeight(.semibold)
                Text(section.text)
                    .font(.caption.weight(.medium))
                    .foregroundColor(.secondary)
                
                // Set progress
                ProgressView(value: section.progress)
                    .accentColor(.white)
                    .frame(maxWidth: 132)
            }
        }
        .padding(20)
    }
}

struct SectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SectionRow()
    }
}
