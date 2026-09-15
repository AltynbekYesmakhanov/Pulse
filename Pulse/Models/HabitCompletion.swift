//
//  HabitCompletion.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 15.09.2026.
//

import Foundation
import SwiftData

@Model
final class HabitCompletion{
    var date: Date
    var habit: Habit?
    
    init(date: Date, habit: Habit?) {
        self.date = date
        self.habit = habit
    }
    
}
