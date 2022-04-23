//
//  Lesson.swift
//  
//
//  Created by Justin Vo on 19/4/2022.
//

import SwiftUI

// Create lesson card for Discovery page
struct Lesson: View {
    var spacing: Namespace.ID
    var discovery: Discovery = discoveryNews[0]
    @Binding var isDisplay: Bool
    
    var body: some View {
        VStack {
            // Set up layout
            Spacer()
            VStack(alignment: .leading, spacing: 12) {
                Text(discovery.title)
                    .font(.largeTitle.weight(.bold))
                    .matchedGeometryEffect(id: "title\(discovery.id)", in: spacing)
                .frame(maxWidth: .infinity, alignment: .leading)
                Text(discovery.subTitle.uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subTitle\(discovery.id)", in: spacing)
                Text(discovery.text.uppercased())
                    .font(.footnote)
                    .matchedGeometryEffect(id: "text\(discovery.id)", in: spacing)
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle( cornerRadius: 30, style: .continuous))
                    .blur(radius: 30)
                    .matchedGeometryEffect(id: "colorBg\(discovery.id)", in: spacing)
            )
        }
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
        .frame(height: 300)
        .padding(20)
    }
}

struct Lesson_Previews: PreviewProvider {
    @Namespace static var spacing
    
    static var previews: some View {
        Lesson(spacing: spacing, isDisplay: .constant(true))
    }
}
