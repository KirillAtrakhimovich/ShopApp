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
    
    var pointImage: UIImageView = {
        let pointImage = UIImageView()
        pointImage.image = UIImage(named: "point_image")
        return pointImage
    }()
    
    var locationImage: UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "loc_image")
        return locationImage
    }()
    
    var locationMultyButton: UIButton = {
        let locationMultyButton = UIButton()
        locationMultyButton.setBackgroundImage(UIImage(systemName: "chevron.down"), for: .normal)
        locationMultyButton.tintColor = .lightGray
        return locationMultyButton
    }()
    
    var filterButton: UIButton = {
        let filterButton = UIButton()
        filterButton.setBackgroundImage(UIImage(named: "filter_image"), for: .normal)
        return filterButton
    }()

    var selectCategoryView: UIView = {
        let selectCategoryView = UIView()
        selectCategoryView.backgroundColor = .red
        return selectCategoryView
    }()
    
    var selectCategoryLabel: UILabel = {
        let selectCategoryLabel = UILabel()
        selectCategoryLabel.textColor = .black
        selectCategoryLabel.text = "Select Category"
        selectCategoryLabel.font = UIFont(name: "Mark Pro", size: 25)
        return selectCategoryLabel
    }()
    
    var selectCategoryButton: UIButton = {
        let selectCategoryButton = UIButton()
        selectCategoryButton.tintColor = #colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1)
        selectCategoryButton.setTitle("view all", for: .normal)
        return selectCategoryButton
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
        
        selectCategoryLabel.setContentCompressionResistancePriority(UILayoutPriority.defaultLow, for: .horizontal)
//        dateLabel.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: .horizontal)
        selectCategoryLabel.setContentHuggingPriority(UILayoutPriority.defaultLow, for:.horizontal)
//        dateLabel.setContentHuggingPriority(UILayoutPriority.defaultHigh, for:.horizontal)
        
        setupLocationView()
        setupLocationLabel()
        setupLocationImage()
        setupPointImage()
        setupLocationMultyButton()
        setupFilterButton()
        setupSelectCategoryView()
        setupSelectCategoryLabel()
        setupSelectCategoryButton()
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
            constraints.leading.equalToSuperview()
            constraints.trailing.equalToSuperview()
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
            constraints.trailing.equalTo(locationLabel.snp.leading).offset(-11)
            constraints.width.equalTo(12)
            constraints.height.equalTo(15.31)
            constraints.centerY.equalToSuperview()
        }
    }
    
    private func setupPointImage() {
        locationView.addSubview(pointImage)
        pointImage.snp.makeConstraints { constraints in
            constraints.trailing.equalTo(locationLabel.snp.leading).offset(-15.12)
            constraints.width.equalTo(3.77)
            constraints.height.equalTo(3.77)
            constraints.top.equalTo(locationImage.snp.top).offset(3.82)
            constraints.bottom.equalTo(locationImage.snp.bottom).offset(-7.73)
        }
    }
    
    private func setupLocationMultyButton() {
        locationView.addSubview(locationMultyButton)
        locationMultyButton.snp.makeConstraints { constraints in
            constraints.leading.equalTo(locationLabel.snp.trailing).offset(8)
            constraints.centerY.equalToSuperview()
            constraints.width.equalTo(10)
            constraints.height.equalTo(5)
        }
    }
    
    private func setupFilterButton() {
        locationView.addSubview(filterButton)
        filterButton.snp.makeConstraints { constraints in
            constraints.trailing.equalToSuperview().offset(-20)
            constraints.width.equalTo(11)
            constraints.height.equalTo(13)
            constraints.centerY.equalToSuperview()
        }
    }
    
    private func setupSelectCategoryView() {
        self.addSubview(selectCategoryView)
        selectCategoryView.snp.makeConstraints { constraints in
            constraints.top.equalTo(locationView.snp.bottom).offset(18)
            constraints.leading.equalToSuperview()
            constraints.trailing.equalToSuperview()
            constraints.height.equalTo(40)
        }
    }
    
    private func setupSelectCategoryLabel() {
        selectCategoryView.addSubview(selectCategoryLabel)
        selectCategoryLabel.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.center.equalToSuperview()
            constraints.leading.equalToSuperview().offset(17)
        }
    }
    
    private func setupSelectCategoryButton() {
        selectCategoryView.addSubview(selectCategoryButton)
        selectCategoryButton.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.center.equalToSuperview()
            constraints.trailing.equalToSuperview().offset(-33)
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
