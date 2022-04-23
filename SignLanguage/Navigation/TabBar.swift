//
//  TabBar.swift
//  
//
//  Created by Justin Vo on 16/4/2022.
//

import SwiftUI

// Set up layout for tab bar
struct TabBar: View {
    @AppStorage("choosenTab") var choosenTab: OpenTab = .tutor
    var body: some View {
        HStack {
            ForEach(tabItems) { item in
                Button {
                    choosenTab = item.tab
                } label: {
                    VStack(spacing: 0) {
                        Image(systemName: item.icon)
                            .symbolVariant(.fill)
                            .font(.body.bold())
                            .frame(width: 44, height: 29)
                        Text(item.title)
                            .font(.caption2)
                            .lineLimit(1)
                    }
                    .frame(maxWidth: .infinity)
                }
                .foregroundColor(choosenTab == item.tab ? .primary : .secondary)
            }
        }
        .padding(.top, 14)
        .frame(height: 88, alignment: .top)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous))
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
