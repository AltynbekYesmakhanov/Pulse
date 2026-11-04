//
//  TodayView.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 13.10.2026.
//

import Foundation
import SwiftUI

struct TodayView: View {
    @State private var selectedMood: Int? = nil
    
    var body: some View{
        VStack{
            MoodPickerView(selectedMood: $selectedMood)
            Text("Current value is: \(selectedMood ?? 0 )")
        }
        
        
    }
}

#Preview {
    TodayView()
}
