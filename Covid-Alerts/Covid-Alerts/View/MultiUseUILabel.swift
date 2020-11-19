//
//  MultiUseUILabel.swift
//  Covid-Alerts
//
//  Created by verebes on 17/11/2020.
//

import UIKit

import UIKit

enum FontStyle {
    case bold
    case normal
    case thin
    case italic
}

final class MultiUseUILabel: UILabel {
    
    init(text: String = "", fontSize: CGFloat = 20, fontStyle: FontStyle = .normal, textColor: UIColor = ThemeColors.labelTextColor, textAlignment: NSTextAlignment = .left, isMultiline: Bool = true) {
        
        super.init(frame: .zero)
        setupLabel(text: text, fontSize: fontSize, fontStyle: fontStyle, textColor: textColor, textAlignment: textAlignment, isMultiline: isMultiline)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLabel(text setText: String, fontSize: CGFloat, fontStyle: FontStyle, textColor: UIColor, textAlignment: NSTextAlignment, isMultiline: Bool) {
        
        switch fontStyle {
        case .bold:
            font = UIFontMetrics(forTextStyle: UIFont.TextStyle.body).scaledFont(for: UIFont(name: "Helvetica-Bold", size: fontSize)!)
        case .normal:
            font = UIFontMetrics(forTextStyle: UIFont.TextStyle.body).scaledFont(for: UIFont(name: "Helvetica", size: fontSize)!)
        case .thin:
            font = UIFontMetrics(forTextStyle: UIFont.TextStyle.body).scaledFont(for: UIFont(name: "Helvetica-Light", size: fontSize)!)
        case .italic:
            font = UIFontMetrics(forTextStyle: UIFont.TextStyle.body).scaledFont(for: UIFont(name: "Helvetica-Oblique", size: fontSize)!)
        }
        
        self.textColor = textColor
        text = setText
        numberOfLines = isMultiline ? 0 : 1
        self.textAlignment = textAlignment
        translatesAutoresizingMaskIntoConstraints = false
    }
}
