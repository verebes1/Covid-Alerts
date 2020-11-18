//
//  TrafficLightsModel.swift
//  Covid-Alerts
//
//  Created by verebes on 17/11/2020.
//

//   let trafficLights = try? newJSONDecoder().decode(TrafficLights.self, from: jsonData)

import Foundation

typealias TrafficLights = [TrafficLight]

// MARK: - TrafficLight
struct TrafficLight: Codable {
    let color: Color
    let trafficLightDescription: Description
    let rules: Rules

    enum CodingKeys: String, CodingKey {
        case color
        case trafficLightDescription = "description"
        case rules
    }
}

// MARK: - Color
struct Color: Codable {
    let name: Description
    let hexCode: String
}

// MARK: - Description
struct Description: Codable {
    let english, german: String
}

// MARK: - Rules
struct Rules: Codable {
    let german, english: [Rule]
}

// MARK: - English
struct Rule: Codable {
    let rule: String
}
