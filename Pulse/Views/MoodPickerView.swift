//
//  MoodPickerView.swift
//  Pulse
//
//  Created by Алтынбек Есмаханов on 15.10.2026.
//

import Foundation
import SwiftUI

struct MoodPickerView: View {
    @Binding var selectedMood: Int?
    
    var body: some View{
        HStack(spacing: 12){
            ForEach(1...5, id: \.self) { mood in
                ZStack{
                    Circle()
                        .fill(selectedMood == mood ? .yellow : .gray)
                        .frame(width: 44, height: 44)
                        .onTapGesture {
                            selectedMood = mood
                        }
                    Text("\(mood)")
                }
                
            }
        }
        
    }
}

#Preview {
    @Previewable @State var mood: Int? = nil
    MoodPickerView(selectedMood: $mood )
    
}
