//
//  mission.swift
//  Moonshot
//
//  Created by Barry Barron on 8/25/22.
//

import Foundation

    struct Mission: Codable, Identifiable {
        struct CrewRole: Codable {
            let name: String
            let role: String
        }
        
        let id: Int
        let launchDate: Date?
        let crew: [CrewRole]
        let description: String
        
        var displayName: String { // Note the mission is capitalized, and a space is inserted in the string for easier reading
            "Apollo \(id)"
        }
        
        var image: String { // No capitalization and no space in this string - just for program use
            "apollo\(id)"
        }
        
        var formattedLaunchDate: String {
            launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
        }
}
