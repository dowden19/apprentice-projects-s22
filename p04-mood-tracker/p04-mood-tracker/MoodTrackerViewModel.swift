//
//  MoodTrackerViewModel.swift
//  p04-mood-tracker
//
//  Created by Jackson Dowden on 1/30/22.
//

import Foundation

final class MoodTrackerViewModel: ObservableObject {
    
    @Published var checkIns: [MoodCheckIn] = []
    @Published var checkInTitle: String = ""
    
    func newCheckIn() {
        checkIns.append(MoodCheckIn(id: UUID(), mood: checkInTitle, timestamp: Date()))
    }
    
}
