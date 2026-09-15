//
//  PulseApp.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 31.08.2026.
//

import SwiftUI
import SwiftData

@main
struct PulseApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Habit.self, Entry.self, HabitCompletion.self])
    }
}
