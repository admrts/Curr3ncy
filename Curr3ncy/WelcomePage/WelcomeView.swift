//
//  WelcomeView.swift
//  Curr3ncy
//
//  Created by Ali Demirtaş on 15.08.2022.
//

import Foundation
import UIKit

class WelcomeView: UIView {
    
    let stackView = UIStackView()
    let logoImage = UIImageView()
    let button = UIButton(type: .system)
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    // don't need but :)
    required init?(coder: NSCoder) {
        fatalError("init(coder:)has not been implemented")
    }
  
}

extension WelcomeView {
    
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBackground
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 200
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.image = UIImage(named: "currencylogo")
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Check Curr3ncy", for: [])
        button.configuration = .filled()
        button.tintColor = .black
        
      
        
        
     
        
    }
    func layout() {
        stackView.addArrangedSubview(logoImage)
        
        stackView.addArrangedSubview(button)
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            
            
            button.leadingAnchor.constraint(equalToSystemSpacingAfter: stackView.leadingAnchor, multiplier: 6),
            stackView.trailingAnchor.constraint(equalToSystemSpacingAfter: button.trailingAnchor, multiplier: 6),
            
        ])
        
    }
   
}
