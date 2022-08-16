//
//  DetailView.swift
//  Curr3ncy
//
//  Created by Ali Demirtaş on 16.08.2022.
//

import Foundation
import UIKit

class DetailView: UIView {
    
    let stackView = UIStackView()
    let currencyLabel = UILabel()
    let detailCurrenyLabel = UILabel()
    let convertLabel = UILabel()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:)has not been implemented")
    }
  
}

extension DetailView {
    
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 100
        
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        currencyLabel.text = "USD"
        currencyLabel.textAlignment = .center
        currencyLabel.font = UIFont.systemFont(ofSize: 40)
        
        detailCurrenyLabel.translatesAutoresizingMaskIntoConstraints = false
        detailCurrenyLabel.text = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered thene in section 1.10.32."
        detailCurrenyLabel.numberOfLines = 0
        detailCurrenyLabel.textAlignment = .center
        
        
        convertLabel.translatesAutoresizingMaskIntoConstraints = false
        convertLabel.text = "1 USD = 18 TRY"
        convertLabel.textAlignment = .center
        convertLabel.font = UIFont.systemFont(ofSize: 20)
       
    }
    func layout() {
        stackView.addArrangedSubview(currencyLabel)
        stackView.addArrangedSubview(detailCurrenyLabel)
        stackView.addArrangedSubview(convertLabel)
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            
        ])
    }
}
