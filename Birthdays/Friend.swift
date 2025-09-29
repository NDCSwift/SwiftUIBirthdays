//
    //  Project: Friend.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import Foundation
import SwiftData

@Model
class Friend{
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date)
    {
        self.name = name
        self.birthday = birthday
    }
    var isBirthdayToday: Bool {
        Calendar.current.isDateInToday(birthday)
    }
    
}
