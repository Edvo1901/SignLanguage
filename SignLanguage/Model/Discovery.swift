//
//  Discovery.swift
//  
//
//  Created by Justin Vo on 18/4/2022.
//

import SwiftUI

// Declare variable in discovery struct
struct Discovery: Identifiable {
    let id = UUID()
    var title: String
    var subTitle: String
    var text: String
    var image: String
    var background: String
    var contentID: Int
}

// Create content information
var discoveryItem = [
    Discovery(title: "Fact", subTitle: "Number of people having hearing loss and deafen is 5% of world's population", text:"430 million people in the world require rehabilitation to address their ‘disabling’ hearing loss", image: "discovery", background: "", contentID: 0),
    Discovery(title: "Fact", subTitle: "700,000 to 900,000 of world's population have deaf-mutes", text:"A mute is “a person who does not speak, either from an inability to speak or an unwillingness to speak”.", image: "discovery", background: "", contentID: 0),
    Discovery(title: "Swift Student Challenge 22", subTitle: "It is more than just a language", text:"Get the world connected, no one left behind", image: "discovery2", background: "", contentID: 0)
]

// Create content information
var discoveryNews = [
    Discovery(title: "Lesson 1", subTitle: "It is more than just a language", text:"In this section, you will be learnt counting 1-10", image: "Lesson1", background: "bg", contentID: 1),
    Discovery(title: "Lesson 2 (Update later)", subTitle: "It is more than just a language", text:"In this section, you will be learnt introduce yourself", image: "Lesson2", background: "bg", contentID: 2),
]
