//
//  NextText.swift
//  
//
//  Created by Justin Vo on 21/4/2022.
//

import SwiftUI

// A "next" button to navigate to specific address
struct NextText: View {
    let str: String
        
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .fontWeight(.bold)
                .padding(.all)
            Spacer()
        }.background(Color.blue.opacity(0.4))
    }
}

struct NextText_Previews: PreviewProvider {
    static var previews: some View {
        NextText(str: "Next")
    }
}
