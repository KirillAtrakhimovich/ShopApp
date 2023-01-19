//
//  HomeStore.swift
//  Shop
//
//  Created by Kirill Atrakhimovich on 22.12.22.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let homeView = HomeView()
    private var hotSalesCollectionView: HotSalesCollectionController?
    private var phonesCollectionView: PhonesCollection?
    
    override func loadView() {
        view = homeView
    }
    
    init(hotSalesCollectionView: HotSalesCollectionController, phonesCollectionView: PhonesCollection) {
        self.hotSalesCollectionView = hotSalesCollectionView
        self.phonesCollectionView = phonesCollectionView
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.hotSalesCollectionView = nil
        self.phonesCollectionView = nil
    }
 
    override func viewDidLoad() {
        homeView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
        homeView.setup()
        setupCollectionSettings()
    }
    
    private func setupCollectionSettings() {
        homeView.categoryColletionView.delegate = self
        homeView.categoryColletionView.dataSource = self
        homeView.hotSalesColletionView.delegate = hotSalesCollectionView
        homeView.hotSalesColletionView.dataSource = hotSalesCollectionView
        homeView.phonesColletionView.delegate = phonesCollectionView
        homeView.phonesColletionView.dataSource = phonesCollectionView
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        myCell.backgroundColor = .blue
        myCell.layer.cornerRadius = myCell.frame.width / 2
        return myCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 71, height: 71)
    }
}
