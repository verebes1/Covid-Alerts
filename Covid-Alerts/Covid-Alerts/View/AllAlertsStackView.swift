//
//  AllAlertsStackView.swift
//  Covid-Alerts
//
//  Created by verebes on 17/11/2020.
//

import UIKit

final class AllAlertsStackView: UIStackView {
    
    var trafficLightsModel: TrafficLights?
    var activeAlert = 0

    init(language: Language = .english) {
        super.init(frame: .zero)
        setupStackView()
        
        trafficLightsModel = loadTrafficLightsModel()
        loadAlertLevels(language: language)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupStackView() {
        translatesAutoresizingMaskIntoConstraints = false
        alignment = .fill
        axis = .vertical
        distribution = .fillEqually
        spacing = 20
    }
    
    private func loadTrafficLightsModel() -> TrafficLights? {
        guard let url = Bundle.main.url(forResource: "traffic-lights", withExtension: "json") else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        
        let trafficLights = try? JSONDecoder().decode(TrafficLights.self, from: data)
        return trafficLights
    }
    
    private func loadAlertLevels(language: Language) {
        guard let trafficLights = trafficLightsModel else { return }
        
        for light in trafficLights {
            let colorName: String

            // TODO:- Eliminate this switch statement to get easier extensibility
            switch language {
            case .german:
                colorName = light.color.name.german
            case .english:
                colorName = light.color.name.english
            }

            let alertLevelRow = AlertLevelRow(trafficLightHexColour: light.color.hexCode, colorName: colorName)
            addArrangedSubview(alertLevelRow)
        }
        
        // TODO:- Remove the code below and implement an active state selection where the information is loaded based on the information received over the network. The code below is just to test the UI.
        guard let selected = arrangedSubviews[arrangedSubviews.count - 1] as? AlertLevelRow else { return }
        activeAlert = arrangedSubviews.count - 1
        selected.isActive = true
    }
}
