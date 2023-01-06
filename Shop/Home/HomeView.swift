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
        return locationView
    }()

    var selectCategoryView: UIView = {
        let selectCategoryView = UIView()
        return selectCategoryView
    }()
    
    var categoryColletionView: UICollectionView = {
        let categoryColletion = UICollectionView()
        return categoryColletion
    }()
    
    var searchBarView: UIView = {
        let searchBarView = UIView()
        return searchBarView
    }()
    
    var hotSalesLablesView: UIView = {
        let searchBarView = UIView()
        return searchBarView
    }()
    
    var hotSalesImageView: UIView = {
        let hotSalesImageView = UIView()
        return hotSalesImageView
    }()
    
    var bestSellerView: UIView = {
        let bestSellerView = UIView()
        return bestSellerView
    }()
    
    var mobileColletionView: UICollectionView = {
        let categoryColletion = UICollectionView()
        return categoryColletion
    }()
    
    func setup() {
        setupLocationView()
        setupSelectCategoryView()
        setupCategoryColletionView()
        setupSearchBarView()
        setupHotSalesLablesView()
        setupHotSalesImageView()
        setupBestSellerView()
    }
    
    private func setupLocationView() {
        self.addSubview(locationView)
        locationView.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(64)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupSelectCategoryView() {
        self.addSubview(selectCategoryView)
        selectCategoryView.snp.makeConstraints { constraints in
            constraints.top.equalTo(locationView.snp.bottom).offset(18)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupCategoryColletionView() {
        self.addSubview(categoryColletionView)
        categoryColletionView.snp.makeConstraints { constraints in
            constraints.top.equalTo(safeAreaLayoutGuide).offset(24)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupSearchBarView() {
        self.addSubview(searchBarView)
        searchBarView.snp.makeConstraints { constraints in
            constraints.top.equalTo(safeAreaLayoutGuide)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupHotSalesLablesView() {
        self.addSubview(hotSalesLablesView)
        hotSalesLablesView.snp.makeConstraints { constraints in
            constraints.top.equalTo(safeAreaLayoutGuide)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }

    private func setupHotSalesImageView() {
        self.addSubview(hotSalesImageView)
        hotSalesImageView.snp.makeConstraints { constraints in
            constraints.top.equalTo(safeAreaLayoutGuide)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupBestSellerView() {
        self.addSubview(bestSellerView)
        bestSellerView.snp.makeConstraints { constraints in
            constraints.top.equalTo(safeAreaLayoutGuide)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
    private func setupMobileColletionView() {
        self.addSubview(mobileColletionView)
        mobileColletionView.snp.makeConstraints { constraints in
            constraints.top.equalTo(safeAreaLayoutGuide)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
        }
    }
    
}
