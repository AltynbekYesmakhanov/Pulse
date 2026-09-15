//
//  Untitled.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 13.09.2026.
//

import Foundation
import SwiftData

@Model
final class Habit {
    var name: String
    var icon: String
    var createdDate: Date
    var color: String
    
    
    init(name: String, icon: String, createdDate: Date, color: String){
        self.name = name
        self.icon = icon
        self.color = color
        self.createdDate = createdDate
    }
}
