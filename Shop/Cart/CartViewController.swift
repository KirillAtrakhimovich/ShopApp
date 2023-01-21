//
//  Cart.swift
//  Shop
//
//  Created by Kirill Atrakhimovich on 22.12.22.
//

import UIKit

class CartViewController: UIViewController {
    
    private let cartView = CartView()
    
    override func loadView() {
        view = cartView
    }
    
    override func viewDidLoad() {
        cartView.backgroundColor = .white
        cartView.setup()
        
    }
}
