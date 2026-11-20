//
//  TodayView.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 13.10.2026.
//

import Foundation
import SwiftUI
import SwiftData

struct TodayView: View {
    @State private var selectedMood: Int? = nil
    @Query private var entries: [Entry]
    @Environment(\.modelContext) private var modelContext
    
    var body: some View{
        VStack{
            MoodPickerView(selectedMood: $selectedMood)
            Text("Current value is: \(selectedMood ?? 0 )")
            Text("Entries: \(entries.count)")
        }
        .onAppear {
            selectedMood = todayEntry?.moodValue
        }
        .onChange(of: selectedMood) {
            guard let mood = selectedMood else { return }
            if let entry = todayEntry {
                entry.moodValue = mood
            } else {
                let newEntry = Entry(createdDate: .now, moodValue: mood)
                modelContext.insert(newEntry)
                
            }
        }
    }
    private var todayEntry : Entry? {
        entries.first { entry in
            Calendar.current.isDateInToday(entry.createdDate)
        }
    }
}

#Preview {
    TodayView()
        .modelContainer(PreviewData.container)
}
