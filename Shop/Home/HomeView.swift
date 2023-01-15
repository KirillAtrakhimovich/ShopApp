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
        selectCategoryButton.setTitleColor(#colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1), for: .normal)
        selectCategoryButton.titleLabel?.font = UIFont(name: "Mark Pro", size: 15)
        selectCategoryButton.setTitle("view all", for: .normal)
        return selectCategoryButton
    }()
    
    var categoryColletionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let categoryColletion = UICollectionView(frame: .zero, collectionViewLayout: layout)
        categoryColletion.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        categoryColletion.translatesAutoresizingMaskIntoConstraints = false
        categoryColletion.backgroundColor = .brown
        
        return categoryColletion
    }()
    
    var searchView: UIView = {
        let searchView = UIView()
        return searchView
    }()
    
    var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.searchTextField.backgroundColor = .white
        searchBar.barStyle = .black
        searchBar.layer.cornerRadius = searchBar.frame.height / 2
        searchBar.placeholder = "Search"
        searchBar.searchBarStyle = .minimal
        searchBar.backgroundColor = .white
        searchBar.barTintColor = .white
        if let textField = searchBar.value(forKey: "searchField") as? UITextField,
            let iconView = textField.leftView as? UIImageView {
            textField.tintColor = .black
            textField.textColor = .black
            iconView.image = iconView.image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
            iconView.tintColor = #colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1)
        }
        return searchBar
    }()
    
    var searchButton: UIButton = {
        let searchButton = UIButton()
        searchButton.backgroundColor = #colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1)
        searchButton.setBackgroundImage(UIImage(systemName: "qrcode"), for: .normal)
        searchButton.layer.cornerRadius = searchButton.frame.height / 2
        searchButton.layer.masksToBounds = true
        return searchButton
    }()
    
    var hotSalesView: UIView = {
        let searchBarView = UIView()
        searchBarView.backgroundColor = .darkGray
        return searchBarView
    }()
    
    var hotSalesLabel: UIView = {
        let searchBarView = UIView()
        searchBarView.backgroundColor = .darkGray
        return searchBarView
    }()
    
    var hotSalesButton: UIView = {
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
        
        selectCategoryLabel.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: .horizontal)
        selectCategoryButton.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: .horizontal)
        selectCategoryLabel.setContentHuggingPriority(UILayoutPriority.defaultHigh, for:.horizontal)
        selectCategoryButton.setContentHuggingPriority(UILayoutPriority.defaultHigh, for:.horizontal)
        
        setupLocationView()
        setupLocationLabel()
        setupLocationImage()
        setupPointImage()
        setupLocationMultyButton()
        setupFilterButton()
        setupSelectCategoryView()
        setupSelectCategoryLabel()
        setupSelectCategoryButton()
        setupCategoryColletionView()
        setupSearchView()
        setupSearchBar()
        setupSearchButton()
//        setupHotSalesLablesView()
//        setupHotSalesImageView()
//        setupBestSellerView()
//        setupMobileColletionView()
        
    }
    
    private func setupLocationView() {
        self.addSubview(locationView)
        locationView.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(59)
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
            constraints.trailing.equalToSuperview().offset(-35)
            constraints.width.equalTo(11)
            constraints.height.equalTo(13)
            constraints.centerY.equalToSuperview()
        }
    }
    
    private func setupSelectCategoryView() {
        self.addSubview(selectCategoryView)
        selectCategoryView.snp.makeConstraints { constraints in
            constraints.top.equalTo(locationView.snp.bottom).offset(8)
            constraints.leading.equalToSuperview()
            constraints.trailing.equalToSuperview()
        }
    }
    
    private func setupSelectCategoryLabel() {
        selectCategoryView.addSubview(selectCategoryLabel)
        selectCategoryLabel.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.centerY.equalToSuperview()
            constraints.leading.equalToSuperview().offset(17)
        }
    }
    
    private func setupSelectCategoryButton() {
        selectCategoryView.addSubview(selectCategoryButton)
        selectCategoryButton.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.centerY.equalToSuperview()
            constraints.trailing.equalToSuperview().offset(-33)
        }
    }
    
    private func setupCategoryColletionView() {
        self.addSubview(categoryColletionView)
        categoryColletionView.snp.makeConstraints { constraints in
            constraints.top.equalTo(selectCategoryView.snp.bottom).offset(5)
            constraints.trailing.equalToSuperview()
            constraints.leading.equalToSuperview()
            constraints.height.equalTo(142)
        }
    }
    
    private func setupSearchView() {
        self.addSubview(searchView)
        searchView.snp.makeConstraints { constraints in
            constraints.top.equalTo(categoryColletionView.snp.bottom)
            constraints.leading.equalToSuperview()
            constraints.trailing.equalToSuperview()
            constraints.height.equalTo(50)
        }
    }
    
    private func setupSearchBar() {
        searchView.addSubview(searchBar)
        searchBar.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.leading.equalToSuperview().offset(32)
            constraints.centerY.equalToSuperview()
        }
    }
    
    private func setupSearchButton() {
        searchView.addSubview(searchButton)
        searchButton.snp.makeConstraints { constraints in
            constraints.leading.equalTo(searchBar.snp.trailing).offset(11)
            constraints.trailing.equalToSuperview().offset(-37)
            constraints.width.equalTo(34)
            constraints.height.equalTo(34)
            constraints.centerY.equalToSuperview()
        }
    }
    
    
    private func setupHotSalesView() {
        self.addSubview(hotSalesView)
        hotSalesView.snp.makeConstraints { constraints in
            constraints.top.equalTo(searchBarView.snp.bottom).offset(24)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }

    private func setupHotSalesLabel() {
        self.addSubview(hotSalesLabel)
        hotSalesLabel.snp.makeConstraints { constraints in
            constraints.top.equalTo(hotSalesLablesView.snp.bottom).offset(10)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupHotSalesButton() {
        self.addSubview(hotSalesButton)
        hotSalesButton.snp.makeConstraints { constraints in
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
