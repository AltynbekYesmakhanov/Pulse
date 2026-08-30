//
//  Item.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 31.08.2026.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
