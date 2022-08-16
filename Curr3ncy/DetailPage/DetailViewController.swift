//
//  DetailViewController.swift
//  Curr3ncy
//
//  Created by Ali Demirtaş on 16.08.2022.
//

import UIKit

class DetailViewController: UIViewController {

    let detailView = DetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        layout()
    }
    
    private func style() {
        detailView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(detailView)
        
        navigationItem.title = "Detail Page"
        
        
    }
    private func layout() {
        
        NSLayoutConstraint.activate([
            detailView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            detailView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            detailView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            detailView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ])
        
    }
    

}
