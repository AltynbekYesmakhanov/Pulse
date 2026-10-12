//
//  Entry.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 13.09.2026.
//

import Foundation
import SwiftData

@Model
final class Entry {
    var createdDate: Date
    var moodValue: Int
    var note: String?
    var tags: [String]
    
    init(createdDate: Date, moodValue: Int, note: String? = nil, tags: [String] = []) {
        self.createdDate = createdDate
        self.moodValue = moodValue
        self.note = note
        self.tags = tags
    }
}
