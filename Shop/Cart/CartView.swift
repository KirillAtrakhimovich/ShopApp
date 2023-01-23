//
//  CartView.swift
//  Shop
//
//  Created by Kirill Atrakhimovich on 22.12.22.
//

import UIKit

class CartView: UIView {
    
    var topView: UIView = {
        let topView = UIView()
        return topView
    }()
    
    var backButton: UIButton = {
        let backButton = UIButton()
        backButton.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0, blue: 0.2078431373, alpha: 1)
        backButton.layer.cornerRadius = 10
        backButton.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        backButton.tintColor = .white
        return backButton
    }()
    
    var addressLabel: UILabel = {
        let locationLabel = UILabel()
        locationLabel.text = "Add address"
        locationLabel.textColor = .black
        locationLabel.font = UIFont(name: "Mark Pro", size: 15)
        return locationLabel
    }()
    
    var addressButton: UIButton = {
        let addressButton = UIButton()
        addressButton.backgroundColor = #colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1)
        addressButton.layer.cornerRadius = 10
        addressButton.setImage(UIImage(named: "full_loc_image"), for: .normal)
        return addressButton
    }()
    
    var myCartLabel: UILabel = {
        let locationLabel = UILabel()
        locationLabel.text = "My Cart"
        locationLabel.textColor = .black
        locationLabel.font = UIFont(name: "Mark Pro", size: 35)
        return locationLabel
    }()
    
    var mainView: UIView = {
        let topView = UIView()
        topView.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0, blue: 0.2078431373, alpha: 1)
        topView.layer.cornerRadius = 30
        return topView
    }()
    
    var checkoutButton: UIButton = {
        let checkoutButton = UIButton()
        checkoutButton.backgroundColor = #colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1)
        checkoutButton.layer.cornerRadius = 10
        checkoutButton.titleLabel?.font = UIFont(name: "Mark Pro", size: 20)
        checkoutButton.setTitle("Checkout", for: .normal)
        return checkoutButton
    }()
    
    var smallLine: UIView = {
        let smallLine = UIView()
        smallLine.backgroundColor = .lightGray
        return smallLine
    }()
    
    var deliveryView: UIView = {
        let deliveryView = UIView()
        deliveryView.backgroundColor = .green
        return deliveryView
    }()
    
    var deliveryLabel: UILabel = {
        let deliveryLabel = UILabel()
        deliveryLabel.backgroundColor = .gray
        return deliveryLabel
    }()
    
    var deliveryPrice: UILabel = {
        let deliveryPrice = UILabel()
        deliveryPrice.backgroundColor = .gray
        return deliveryPrice
    }()
    
    var totalView: UIView = {
        let totalView = UIView()
        totalView.backgroundColor = .red
        return totalView
    }()
    
    var totalLabel: UILabel = {
        let totalLabel = UILabel()
        totalLabel.backgroundColor = .gray
        return totalLabel
    }()
    
    var totalPrice: UILabel = {
        let totalPrice = UILabel()
        totalPrice.backgroundColor = .gray
        return totalPrice
    }()
    
    var bigLine: UIView = {
        let smallLine = UIView()
        smallLine.backgroundColor = .lightGray
        return smallLine
    }()
    
    func setup() {
        setupTopView()
        setupBackButton()
        setupAdressLabel()
        setupAdressButton()
        setupMyCartLabel()
        setupMainView()
        setupCheckoutButton()
        setupSmallLine()
        setupDeliveryView()
//        setupDeliveryLabel()
//        setupDeliveryPrice()
        setupTotalView()
//        setupTotalLabel()
//        setupTotalPrice()
        setupBigLine()
    }
    
    private func setupTopView() {
        self.addSubview(topView)
        topView.snp.makeConstraints { constraints in
            constraints.top.equalTo(safeAreaLayoutGuide)
            constraints.leading.equalToSuperview()
            constraints.trailing.equalToSuperview()
        }
    }
    
    private func setupBackButton() {
        topView.addSubview(backButton)
        backButton.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.leading.equalToSuperview().offset(42)
            constraints.width.height.equalTo(37)
        }
    }
    
    private func setupAdressLabel() {
        topView.addSubview(addressLabel)
        addressLabel.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
        }
    }
    
    private func setupAdressButton() {
        topView.addSubview(addressButton)
        addressButton.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.leading.equalTo(addressLabel.snp.trailing).offset(9)
            constraints.trailing.equalToSuperview().offset(-46)
            constraints.width.height.equalTo(37)
        }
    }
    
    private func setupMyCartLabel() {
        self.addSubview(myCartLabel)
        myCartLabel.snp.makeConstraints { constraints in
            constraints.top.equalTo(backButton.snp.bottom).offset(50)
            constraints.leading.equalToSuperview().offset(42)
            constraints.trailing.equalToSuperview().offset(-100)
        }
    }
    
    private func setupMainView() {
        self.addSubview(mainView)
        mainView.snp.makeConstraints { constraints in
            constraints.top.equalTo(myCartLabel.snp.bottom).offset(49)
            constraints.leading.equalToSuperview()
            constraints.trailing.equalToSuperview()
            constraints.bottom.equalToSuperview().offset(-100)
        }
    }
    
    private func setupCheckoutButton() {
        mainView.addSubview(checkoutButton)
        checkoutButton.snp.makeConstraints { constraints in
            constraints.leading.equalToSuperview().offset(44)
            constraints.bottom.trailing.equalToSuperview().offset(-44)
        }
    }
    
    private func setupSmallLine() {
        mainView.addSubview(smallLine)
        smallLine.snp.makeConstraints { constraints in
            constraints.leading.trailing.equalToSuperview()
            constraints.bottom.equalTo(checkoutButton.snp.top).offset(-27)
            constraints.height.equalTo(1)
        }
    }
    
    private func setupDeliveryView() {
        mainView.addSubview(deliveryView)
        deliveryView.snp.makeConstraints { constraints in
            constraints.leading.equalToSuperview()
            constraints.trailing.equalToSuperview()
            constraints.bottom.equalTo(smallLine.snp.top).offset(-26)
        }
    }
    
    private func setupDeliveryLabel() {
        mainView.addSubview(smallLine)
        smallLine.snp.makeConstraints { constraints in
            constraints.leading.trailing.equalToSuperview()
            constraints.bottom.equalTo(checkoutButton.snp.top).offset(-27)
            constraints.height.equalTo(1)
        }
    }
    
    private func setupDeliveryPrice() {
        mainView.addSubview(smallLine)
        smallLine.snp.makeConstraints { constraints in
            constraints.leading.trailing.equalToSuperview()
            constraints.bottom.equalTo(checkoutButton.snp.top).offset(-27)
            constraints.height.equalTo(1)
        }
    }
    
    private func setupTotalView() {
        mainView.addSubview(totalView)
        totalView.snp.makeConstraints { constraints in
            constraints.leading.trailing.equalToSuperview()
            constraints.bottom.equalTo(deliveryView.snp.top).offset(-12)
        }
    }
    
    private func setupTotalLabel() {
        mainView.addSubview(smallLine)
        smallLine.snp.makeConstraints { constraints in
            constraints.leading.trailing.equalToSuperview()
            constraints.bottom.equalTo(checkoutButton.snp.top).offset(-27)
            constraints.height.equalTo(1)
        }
    }
    
    private func setupTotalPrice() {
        mainView.addSubview(smallLine)
        smallLine.snp.makeConstraints { constraints in
            constraints.leading.trailing.equalToSuperview()
            constraints.bottom.equalTo(checkoutButton.snp.top).offset(-27)
            constraints.height.equalTo(1)
        }
    }
    
    private func setupBigLine() {
        mainView.addSubview(bigLine)
        bigLine.snp.makeConstraints { constraints in
            constraints.leading.trailing.equalToSuperview()
            constraints.bottom.equalTo(totalView.snp.top).offset(-15)
            constraints.height.equalTo(2)
        }
    }
}
