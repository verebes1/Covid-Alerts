//
//  ViewController.swift
//  Covid-Alerts
//
//  Created by verebes on 15/11/2020.
//

import UIKit

final class MainViewController: UIViewController {

    let allAlertsStackView = AllAlertsStackView(language: .german)
    let smallInfoView = SmallInfoView(title: "", details: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = ThemeColors.mainBackground
        setUpAllAlertStackView()
        setUpSmallInfoView()
    }

    func setUpAllAlertStackView() {
        let safeArea = view.safeAreaLayoutGuide
        let screenHeight: CGFloat = UIScreen.main.bounds.height
        
        view.addSubview(allAlertsStackView)
        
        allAlertsStackView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 30).isActive = true
        allAlertsStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -((screenHeight / 3) + 100)).isActive = true
        allAlertsStackView.leftAnchor.constraint(equalTo: safeArea.leftAnchor, constant: 30).isActive = true
        allAlertsStackView.rightAnchor.constraint(equalTo: safeArea.rightAnchor, constant: -30).isActive = true
    }
    
    func setUpSmallInfoView() {
        guard allAlertsStackView.trafficLightsModel != nil else { return }
        
        let safeArea = view.safeAreaLayoutGuide

        let activeAlert = allAlertsStackView.activeAlert
        let infoViewModel = allAlertsStackView.trafficLightsModel?[activeAlert]
        smallInfoView.titleLabel.text = infoViewModel?.color.name.english
        smallInfoView.detailsLabel.text = infoViewModel?.trafficLightDescription.english
        
        view.addSubview(smallInfoView)
        smallInfoView.topAnchor.constraint(equalTo: allAlertsStackView.bottomAnchor, constant: 30).isActive = true
        smallInfoView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        smallInfoView.leftAnchor.constraint(equalTo: safeArea.leftAnchor, constant: 30).isActive = true
        smallInfoView.rightAnchor.constraint(equalTo: safeArea.rightAnchor, constant: -30).isActive = true
    }


}

