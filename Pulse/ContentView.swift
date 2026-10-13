//
//  ContentView.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 31.08.2026.
//

import SwiftUI
//import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Today", systemImage: "calendar.circle"){
                TodayView()
            }
            Tab("Journal", systemImage: "book"){
                JournalView()
            }
            Tab("Stats", systemImage: "chart.bar.xaxis"){
                StatsView()
            }
            Tab("Settings", systemImage: "gearshape"){
                SettingsView()
            }
        }

    }
}

#Preview {
    ContentView()
//        .modelContainer(PreviewData.container)
}
