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
        locationView.backgroundColor = .black
        return locationView
    }()

    var selectCategoryView: UIView = {
        let selectCategoryView = UIView()
        selectCategoryView.backgroundColor = .blue
        return selectCategoryView
    }()
    
    var categoryColletionView: UICollectionView = {
        let categoryColletion = UICollectionView()
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
    
//    var mobileColletionView: UICollectionView = {
//        let mobileColletionView = UICollectionView()
//        mobileColletionView.reg
//        return mobileColletionView
//    }()
    
    func setup() {
        setupLocationView()
        setupSelectCategoryView()
        setupCategoryColletionView()
        setupSearchBarView()
        setupHotSalesLablesView()
        setupHotSalesImageView()
        setupBestSellerView()
//        setupMobileColletionView()
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
    
//    private func setupMobileColletionView() {
//        self.addSubview(mobileColletionView)
//        mobileColletionView.snp.makeConstraints { constraints in
//            constraints.top.equalTo(bestSellerView.snp.bottom).offset(16)
//            constraints.leading.equalToSuperview().offset(5)
//            constraints.trailing.equalToSuperview().offset(-5)
//        }
//    }
    
}
