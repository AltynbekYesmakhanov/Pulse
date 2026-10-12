//
//  ContentView.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 31.08.2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var habits: [Habit]

    var body: some View {
        List(habits) { habit in
            Text(habit.name)
        }

    }
}

#Preview {
    ContentView()
        .modelContainer(PreviewData.container)
}
