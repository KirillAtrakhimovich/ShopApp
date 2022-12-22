//
//  HomeStore.swift
//  Shop
//
//  Created by Kirill Atrakhimovich on 22.12.22.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let homeView = HomeView()
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        homeView.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    }
    
}
