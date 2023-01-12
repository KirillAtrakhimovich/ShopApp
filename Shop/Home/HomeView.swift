//
//  HomeView.swift
//  Shop
//
//  Created by Kirill Atrakhimovich on 22.12.22.
//

import UIKit
import SnapKit

class HomeView: UIView {
    
    var locationView: UIView = {
        let locationView = UIView()
        locationView.backgroundColor = .clear
        return locationView
    }()
    
    var locationLabel: UILabel = {
        let locationLabel = UILabel()
        locationLabel.text = "Zihuatanejo, Gro"
        locationLabel.textAlignment = .center
        locationLabel.textColor = .black
        locationLabel.font = UIFont(name: "Mark Pro", size: 15)
        return locationLabel
    }()
    
    var locationImage: UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(systemName: "mappin.and.ellipse")
        locationImage.tintColor = #colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1)
        return locationImage
    }()
    
    var locationMultyButton: UIButton = {
        let locationMultyButton = UIButton()
        locationMultyButton.setImage(UIImage(named: "chevron.down"), for: UIControl.State.normal)
        return locationMultyButton
    }()

    var selectCategoryView: UIView = {
        let selectCategoryView = UIView()
        selectCategoryView.backgroundColor = .red
        return selectCategoryView
    }()
    
    var categoryColletionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let categoryColletion = UICollectionView(frame: .zero, collectionViewLayout: layout)
        categoryColletion.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        categoryColletion.backgroundColor = .brown
        return categoryColletion
    }()
    
    var searchBarView: UIView = {
        let searchBarView = UIView()
        searchBarView.backgroundColor = .cyan
        return searchBarView
    }()
    
    var hotSalesLablesView: UIView = {
        let searchBarView = UIView()
        searchBarView.backgroundColor = .darkGray
        return searchBarView
    }()
    
    var hotSalesImageView: UIView = {
        let hotSalesImageView = UIView()
        hotSalesImageView.backgroundColor = .green
        return hotSalesImageView
    }()
    
    var bestSellerView: UIView = {
        let bestSellerView = UIView()
        bestSellerView.backgroundColor = .orange
        return bestSellerView
    }()
    
    var mobileColletionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let mobileColletionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        mobileColletionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        mobileColletionView.backgroundColor = .brown
        return mobileColletionView
    }()
    
    func setup() {
        setupLocationView()
        setupLocationLabel()
        setupLocationImage()
        setupLocationMultyButton()
//        setupSelectCategoryView()
//        setupCategoryColletionView()
//        setupSearchBarView()
//        setupHotSalesLablesView()
//        setupHotSalesImageView()
//        setupBestSellerView()
//        setupMobileColletionView()
        
    }
    
    private func setupLocationView() {
        self.addSubview(locationView)
        locationView.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(64)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
            constraints.height.equalTo(40)
        }
    }
    
    private func setupLocationLabel() {
        locationView.addSubview(locationLabel)
        locationLabel.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.center.equalToSuperview()
        }
    }
    
    private func setupLocationImage() {
        locationView.addSubview(locationImage)
        locationImage.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(9)
            constraints.trailing.equalTo(locationLabel.snp.leading).offset(-11)
            constraints.bottom.equalToSuperview().offset(-9)
            constraints.width.equalTo(20)
//            constraints.width.equalTo(locationImage.snp.height)
//            constraints.centerY.equalToSuperview()
        }
    }
    
    private func setupLocationMultyButton() {
        locationView.addSubview(locationMultyButton)
        locationMultyButton.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
            constraints.bottom.equalToSuperview().offset(-5)
        }
    }
    
    private func setupSelectCategoryView() {
        self.addSubview(selectCategoryView)
        selectCategoryView.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(18)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
            constraints.bottom.equalToSuperview().offset(-10)
        }
    }
    
    private func setupCategoryColletionView() {
        self.addSubview(categoryColletionView)
        categoryColletionView.snp.makeConstraints { constraints in
            constraints.top.equalTo(selectCategoryView.snp.bottom).offset(24)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupSearchBarView() {
        self.addSubview(searchBarView)
        searchBarView.snp.makeConstraints { constraints in
            constraints.top.equalTo(categoryColletionView.snp.bottom).offset(35)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupHotSalesLablesView() {
        self.addSubview(hotSalesLablesView)
        hotSalesLablesView.snp.makeConstraints { constraints in
            constraints.top.equalTo(searchBarView.snp.bottom).offset(24)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }

    private func setupHotSalesImageView() {
        self.addSubview(hotSalesImageView)
        hotSalesImageView.snp.makeConstraints { constraints in
            constraints.top.equalTo(hotSalesLablesView.snp.bottom).offset(10)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupBestSellerView() {
        self.addSubview(bestSellerView)
        bestSellerView.snp.makeConstraints { constraints in
            constraints.top.equalTo(hotSalesImageView.snp.bottom).offset(10)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
            constraints.bottom.equalToSuperview()
        }
    }
    
    private func setupMobileColletionView() {
        self.addSubview(mobileColletionView)
        mobileColletionView.snp.makeConstraints { constraints in
            constraints.top.equalTo(bestSellerView.snp.bottom).offset(16)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
}
