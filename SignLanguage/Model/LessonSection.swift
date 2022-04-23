//
//  LessonSection.swift
//  
//
//  Created by Justin Vo on 20/4/2022.
//

import SwiftUI

struct LessonSection: Identifiable {
    let id = UUID()
    var title: String
    var subTitle: String
    var text: String
    var image: String
    var background: String
    var logo: String
    var progress: CGFloat
    var contentTitle: String
    var contentText: String
    var contentID: Int
}

var lessonSection = [
    LessonSection(title: "Tutorial 1", subTitle: "More than a language", text:"Number 1", image: "number1", background: "", logo: "DarkAppIcon", progress: 0.1, contentTitle: "Instruction", contentText: "Keep the inside palm facing to your body, show your index finger", contentID: 1),
    LessonSection(title: "Tutorial 2", subTitle: "More than a language", text:"Number 2", image: "number2", background: "", logo: "DarkAppIcon", progress: 0.2, contentTitle: "Instruction", contentText: "Keep the inside palm facing to your body, show your index finger and middle finger", contentID: 1),
    LessonSection(title: "Tutorial 3", subTitle: "More than a language", text:"Number 3", image: "number3", background: "", logo: "DarkAppIcon", progress: 0.3, contentTitle: "Instruction", contentText: "Keep the inside palm facing to your body, show your thumb, index finger and middle finger.\nNote: Please don't show your index finger, midlle and ring fingers as it is a wrong way. The only way to show number 3 is your thumb, index finger and middle finger", contentID: 1),
    LessonSection(title: "Tutorial 4", subTitle: "More than a language", text:"Number 4", image: "number4", background: "", logo: "DarkAppIcon", progress: 0.4, contentTitle: "Instruction", contentText: "Show your index, middle, ring and little finger to indicate number 4. Remember the inside palm still facing your body", contentID: 1),
    LessonSection(title: "Tutorial 5", subTitle: "More than a language", text:"Number 5", image: "number5", background: "", logo: "DarkAppIcon", progress: 0.5, contentTitle: "Instruction", contentText: "Number 5 is probably the easiest number, you only need to show all fingers on your hand. Still facing your palm to your body", contentID: 1),
    LessonSection(title: "Tutorial 6", subTitle: "More than a language", text:"Number 6", image: "number6", background: "", logo: "DarkAppIcon", progress: 0.6, contentTitle: "Instruction", contentText: "Notice how the thumb and little finger touch each other. Beside, this time facing your inside palm forward (This is the main different of 3 and 6).", contentID: 1),
    LessonSection(title: "Tutorial 7", subTitle: "More than a language", text:"Number 7", image: "number7", background: "", logo: "DarkAppIcon", progress: 0.7, contentTitle: "Instruction", contentText: "This time your ring finger and thumb are touching, leave other 3 fingers straight and remember to facing the inside palm forward.", contentID: 1),
    LessonSection(title: "Tutorial 8", subTitle: "More than a language", text:"Number 8", image: "number8", background: "", logo: "DarkAppIcon", progress: 0.8, contentTitle: "Instruction", contentText: "Touch your middle finger and thumb together, leave other 3 fingers straight and remember to facing the inside palm forward", contentID: 1),
    LessonSection(title: "Tutorial 9", subTitle: "More than a language", text:"Number 9", image: "number9", background: "", logo: "DarkAppIcon", progress: 0.9, contentTitle: "Instruction", contentText: "Touch your index finger and thumb together, leave other 3 fingers straight and remember to facing the inside palm forward", contentID: 1),
    LessonSection(title: "Tutorial 10", subTitle: "More than a language", text:"Number 10", image: "number10", background: "", logo: "DarkAppIcon", progress: 1.0, contentTitle: "Instruction", contentText: "Number 10 is a little special, we do the thumb is up and we shake it", contentID: 1),
]
