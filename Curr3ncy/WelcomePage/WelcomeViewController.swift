//
//  WelcomeViewController.swift
//  Curr3ncy
//
//  Created by Ali Demirtaş on 15.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    let welcomeView = WelcomeView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
        
        // navigation title
        navigationItem.title = "Curr3ncy"
        
        welcomeView.button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
            
    }
    @objc func tapped() {
        let govc = CurrencyViewController()
        navigationController?.pushViewController(govc, animated: true)
    }
    
    
    private func style() {
        welcomeView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcomeView)
        
    }
    private func layout() {
        NSLayoutConstraint.activate([
            welcomeView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            welcomeView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            welcomeView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            welcomeView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
            
        ])
        
        
    }
    
   

}
