//
//  CustomButton.swift
//  swift-loginSystem-firebase
//
//  Created by ST SE on 28/3/2023.
//

import UIKit
import SwiftUI

class CustomButton: UIButton {
    
    enum FontSize {
        case big
        case med
        case small
    }
    
    init(title: String, hasBackground: Bool = false, fontSize: FontSize){
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
        self.backgroundColor = hasBackground ? UIColor(Color("AccentColor")) : .clear
        let titleColor: UIColor = hasBackground ? .white: .systemBlue
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(.darkGray, for: .highlighted)
        
        switch fontSize{
        case .big:
            self.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        case .med:
            self.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        case .small:
            self.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
