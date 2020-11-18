//
//  AlertLevel.swift
//  Covid-Alerts
//
//  Created by verebes on 16/11/2020.
//

import UIKit

//enum TrafficLightColor: String {
//    case green, yellow, red
//}

final class AlertLevelRow: UIView {

    var isActive = false {
        didSet {
            backgroundColor = isActive ? ThemeColors.activeAlertRowBackground : ThemeColors.alertRowBackground
        }
    }
    
    init(trafficLightHexColour: String, colorName: String) {
        super.init(frame: .zero)
        backgroundColor = ThemeColors.alertRowBackground
        layer.borderColor = ThemeColors.alertRowBorder
        layer.borderWidth = 2
        layer.cornerRadius = 20
        setupRowElements(trafficLightHexColour: trafficLightHexColour, colorName: colorName)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupRowElements(trafficLightHexColour: String, colorName: String) {
        let trafficLightCircle = TrafficLightCircle(hexColor: trafficLightHexColour)
        let label = MultiUseUILabel(text: colorName, fontSize: 30, fontStyle: .bold, isMultiline: false)
        
        addSubview(trafficLightCircle)
        addSubview(label)
        
        trafficLightCircle.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        trafficLightCircle.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        trafficLightCircle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        trafficLightCircle.widthAnchor.constraint(equalTo: trafficLightCircle.heightAnchor).isActive = true

        label.centerYAnchor.constraint(equalTo: trafficLightCircle.centerYAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: trafficLightCircle.rightAnchor, constant: 30).isActive = true
    }
    
}
