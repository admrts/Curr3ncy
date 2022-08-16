//
//  CurrencyViewController.swift
//  Curr3ncy
//
//  Created by Ali Demirtaş on 16.08.2022.
//

import UIKit

class CurrencyViewController: UIViewController {
    
    let tableView = UITableView()
    let names = ["USD","EUR","AUD","TRY"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        layout()
        
        navigationItem.title = "Curr3ncy List"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    private func style(){
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    private func layout() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
       
    }
}

extension CurrencyViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = names[indexPath.row]
        print(name)
    }
    
}
