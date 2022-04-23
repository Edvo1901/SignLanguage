//
//  Bar.swift
//  
//
//  Created by Justin Vo on 16/4/2022.
//

import SwiftUI

// Make a custom tab bar
struct TabItem: Identifiable {
    var id = UUID()
    var title: String
    var icon: String
    var tab: OpenTab
}

// Define name, icon and function
var tabItems = [
    TabItem(title: "Tutor", icon: "book.circle", tab: .tutor),
    TabItem(title: "Quiz", icon: "newspaper.circle", tab: .exam),
    TabItem(title: "Information", icon: "info.circle.fill", tab: .inform),
]

// Set available case
enum OpenTab: String {
    case tutor
    case exam
    case inform
}
