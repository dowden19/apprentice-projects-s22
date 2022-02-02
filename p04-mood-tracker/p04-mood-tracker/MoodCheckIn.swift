//
//  MoodCheckIn.swift
//  p04-mood-tracker
//
//  Created by Jackson Dowden on 1/30/22.
//

import Foundation

struct MoodCheckIn: Identifiable {
    let id: UUID
    let mood: String
    let timestamp: Date
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm, d MMM y"
        return formatter.string(from: timestamp)
    }
}

