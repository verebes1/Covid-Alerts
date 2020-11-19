//
//  SmallInfoView.swift
//  Covid-Alerts
//
//  Created by verebes on 18/11/2020.
//

import UIKit

final class SmallInfoView: UIView {

    var titleLabel: MultiUseUILabel
    var detailsLabel: MultiUseUILabel
    var showDetailsBtn: RoundedButton = RoundedButton(title: "Show Details")
    
    init(title: String = "Title", details: String = "Sample details") {
        titleLabel = MultiUseUILabel(text: title, fontSize: 30, fontStyle: .bold, textAlignment: .center)
        detailsLabel = MultiUseUILabel(text: details, fontSize: 20, fontStyle: .normal, textAlignment: .center)
        
        super.init(frame: .zero)
        setupInfoView()
        
        setupInfoViewElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupInfoView() {
        backgroundColor = ThemeColors.alertRowBackground
        layer.borderColor = ThemeColors.alertRowBorder
        layer.borderWidth = 2
        layer.cornerRadius = 20
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupInfoViewElements() {
        addSubview(titleLabel)
        addSubview(detailsLabel)
        addSubview(showDetailsBtn)
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        detailsLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        detailsLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        detailsLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        showDetailsBtn.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15).isActive = true
        showDetailsBtn.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        showDetailsBtn.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        showDetailsBtn.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15).isActive = true
    }
    
}
