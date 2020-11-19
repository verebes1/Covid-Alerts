//
//  TrafficLightCircle.swift
//  Covid-Alerts
//
//  Created by verebes on 17/11/2020.
//

import UIKit

final class TrafficLightCircle: UIView {
    
    init(hexColor: String) {
        super.init(frame: .zero)
        setupTraffiLightView(hexColor: hexColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTraffiLightView(hexColor: String) {
        backgroundColor = UIColor(hex: hexColor)
        translatesAutoresizingMaskIntoConstraints = false
        setRoundedCorners()
    }
    
    private func setRoundedCorners() {
        // Automatically sets the corners to a circle once the views are layed out and have a height.
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: false) { (nil) in
            self.layer.cornerRadius = self.frame.height / 2
        }
    }
    

}
