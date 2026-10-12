//
//  PreviewData.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 15.09.2026.
//

import Foundation
import SwiftData

struct PreviewData {
    static var container : ModelContainer {
        
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        
        let container = try! ModelContainer(for: Habit.self, Entry.self, HabitCompletion.self, configurations: config)
        
        let grappling = Habit(name: "Grappling", icon: "dumbbell", createdDate: Date.now, color: "Green")
        let work = Habit(name: "Wolt", icon: "briefcase", createdDate: Date.now, color: "Blue")
        let cycling = Habit(name: "Cycling", icon: "bicycle", createdDate: Date.now, color: "Orange")
        
        let first = Entry(createdDate: Date.now, moodValue: 2)
        let second = Entry(createdDate: Calendar.current.date(byAdding: .day, value: -1, to: .now) ?? Date.now, moodValue: 3, tags: ["First", "Second"])
        let third = Entry(createdDate: Calendar.current.date(byAdding: .day, value: -2, to: .now) ?? Date.now, moodValue: 5, note: "It's the third")
        
        
        
        container.mainContext.insert(grappling)
        container.mainContext.insert(work)
        container.mainContext.insert(cycling)
        container.mainContext.insert(first)
        container.mainContext.insert(second)
        container.mainContext.insert(third)
        
        return container
    }
}
    
