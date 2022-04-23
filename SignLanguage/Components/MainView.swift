//
//  MainView.swift
//  
//
//  Created by Justin Vo on 16/4/2022.
//

import SwiftUI

struct MainView: View {
    var discovery: Discovery = discoveryNews[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Text(discovery.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(discovery.subTitle.uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            Text(discovery.text)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all, 20)
        .padding(.vertical, 20)
        .frame(height: 350)
        .background(.ultraThinMaterial)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: .primary.opacity(0.3), radius: 10, x: 0, y: 10)
        .padding(.horizontal, 20)
        .overlay(
            Image(discovery.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x: 32, y: -80)
        )
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
