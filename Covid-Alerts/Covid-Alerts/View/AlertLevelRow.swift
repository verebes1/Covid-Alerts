//
//  AlertLevel.swift
//  Covid-Alerts
//
//  Created by verebes on 16/11/2020.
//

import UIKit

enum TrafficLight {
    case green, yellow, red
}

class AlertLevelRow: UIView {

    var trafficLight: TrafficLight
    
    
    init(trafficLight: TrafficLight) {

        self.trafficLight = trafficLight

        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
