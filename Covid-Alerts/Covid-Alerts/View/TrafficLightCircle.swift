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
        backgroundColor = UIColor(hex: hexColor)
        setRoundedCorners()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setRoundedCorners(/*radius: CGFloat*/) {
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: false) { (nil) in
//            print("LIGHT SIZE IS:\(self.frame.height)")
            self.layer.cornerRadius = self.frame.height / 2
        }
    }
    

}
