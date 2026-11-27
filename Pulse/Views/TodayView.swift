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
    
    @State private var note = ""
    @State private var tagText = ""
    
    var body: some View{
        VStack{
            MoodPickerView(selectedMood: $selectedMood)
            if todayEntry != nil {
                TextField("Write a note", text: $note, axis: .vertical)
                TextField("Tags: work, sleep, gym", text: $tagText)
                Text("\(note.count)/500")
                Button("Save"){
                    guard let entry = todayEntry else { return }
                    
                    let trimmedNote = note.trimmingCharacters(in: .whitespacesAndNewlines)
                    entry.note = trimmedNote.isEmpty ? nil : String(trimmedNote.prefix(500))
                    
                    let parts = tagText.split(separator: ",")
                        .map { $0.trimmingCharacters(in: .whitespaces) }
                        .filter { !$0.isEmpty }
                    entry.tags = Array(parts.prefix(5))
                    
                }
            }
        }
        .padding()
        .onAppear {
            selectedMood = todayEntry?.moodValue
            note = todayEntry?.note ?? ""
            tagText = todayEntry?.tags.joined(separator: ", ") ?? ""
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
        .textFieldStyle(.roundedBorder)
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
