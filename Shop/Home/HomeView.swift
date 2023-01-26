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
        searchBar.layer.borderColor = UIColor.white.cgColor
        searchBar.layer.borderWidth = 1
        searchBar.layer.cornerRadius = 20
        searchBar.clipsToBounds = true
        searchBar.placeholder = "Search"
        searchBar.searchTextField.font = UIFont(name: "Mark Pro", size: 12)
        searchBar.backgroundColor = .white
        searchBar.barTintColor = .white
        searchBar.setImage(UIImage(named: "search_icon"), for: .search, state: .normal)
        if let textField = searchBar.value(forKey: "searchField") as? UITextField,
            let iconView = textField.leftView as? UIImageView {
            textField.tintColor = .black
            textField.textColor = .black
        }
        return searchBar
    }()
    
    var searchButton: UIButton = {
        let searchButton = UIButton()
        searchButton.backgroundColor = #colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1)
        searchButton.layer.cornerRadius = 17
        return searchButton
    }()
    
    var searchButtonImage: UIImageView = {
        let searchButtonImage = UIImageView()
        searchButtonImage.image = UIImage(named: "qrCode_image")
        return searchButtonImage
    }()
    
    var hotSalesView: UIView = {
        let hotSalesView = UIView()
        return hotSalesView
    }()
    
    var hotSalesLabel: UILabel = {
        let hotSalesLabel = UILabel()
        hotSalesLabel.textColor = .black
        hotSalesLabel.text = "Hot sales"
        hotSalesLabel.font = UIFont(name: "Mark Pro", size: 25)
        return hotSalesLabel
    }()
    
    var hotSalesButton: UIButton = {
        let hotSalesButton = UIButton()
        hotSalesButton.setTitleColor(#colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1), for: .normal)
        hotSalesButton.titleLabel?.font = UIFont(name: "Mark Pro", size: 15)
        hotSalesButton.setTitle("see more", for: .normal)
        return hotSalesButton
    }()
    
    var hotSalesColletionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let hotSalesColletionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        hotSalesColletionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "hotSalesCell")
        hotSalesColletionView.translatesAutoresizingMaskIntoConstraints = false
        hotSalesColletionView.backgroundColor = .brown
        hotSalesColletionView.isPagingEnabled = true
        return hotSalesColletionView
    }()
    
    var bestSellerView: UIView = {
        let bestSellerView = UIView()
        return bestSellerView
    }()
    
    var bestSellerLabel: UILabel = {
        let bestSellerLabel = UILabel()
        bestSellerLabel.textColor = .black
        bestSellerLabel.text = "Best Seller"
        bestSellerLabel.font = UIFont(name: "Mark Pro", size: 25)
        return bestSellerLabel
    }()
    
    var bestSellerButton: UIButton = {
        let bestSellerButton = UIButton()
        bestSellerButton.setTitleColor(#colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1), for: .normal)
        bestSellerButton.titleLabel?.font = UIFont(name: "Mark Pro", size: 15)
        bestSellerButton.setTitle("see more", for: .normal)
        return bestSellerButton
    }()
    
    var phonesColletionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let phonesColletionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        phonesColletionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "phoneCell")
        phonesColletionView.translatesAutoresizingMaskIntoConstraints = false
        phonesColletionView.backgroundColor = .brown
        phonesColletionView.isPagingEnabled = true
        return phonesColletionView
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
        setupSearchButtonImage()
        setupHotSalesView()
        setupHotSalesLabel()
        setupHotSalesButton()
        setupHotSalesCollectionView()
        setupBestSellerView()
        setupBestSellerLabel()
        setupBestSellerButton()
        setupPhonesCollection()
    }
    
    private func setupLocationView() {
        self.addSubview(locationView)
        locationView.snp.makeConstraints { constraints in
            constraints.top.equalTo(safeAreaLayoutGuide)
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
            constraints.width.height.equalTo(34)
            constraints.centerY.equalToSuperview()
        }
    }
    
    private func setupSearchButtonImage() {
        searchButton.addSubview(searchButtonImage)
        searchButtonImage.snp.makeConstraints { constraints in
            constraints.leading.equalTo(searchButton.snp.leading).offset(9.61)
            constraints.trailing.equalTo(searchButton.snp.trailing).offset(-9.61)
            constraints.top.equalTo(searchButton.snp.top).offset(9.61)
            constraints.bottom.equalTo(searchButton.snp.bottom).offset(-9.61)
        }
    }
    
    private func setupHotSalesView() {
        self.addSubview(hotSalesView)
        hotSalesView.snp.makeConstraints { constraints in
            constraints.top.equalTo(searchView.snp.bottom).offset(19)
            constraints.leading.equalToSuperview()
            constraints.trailing.equalToSuperview()
        }
    }

    private func setupHotSalesLabel() {
        hotSalesView.addSubview(hotSalesLabel)
        hotSalesLabel.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.centerY.equalToSuperview()
            constraints.leading.equalToSuperview().offset(17)
        }
    }
    
    private func setupHotSalesButton() {
        hotSalesView.addSubview(hotSalesButton)
        hotSalesButton.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.centerY.equalToSuperview()
            constraints.trailing.equalToSuperview().offset(-33)
            constraints.leading.equalTo(hotSalesLabel.snp.trailing).offset(5)
        }
    }
    
    private func setupHotSalesCollectionView() {
        self.addSubview(hotSalesColletionView)
        hotSalesColletionView.snp.makeConstraints { constraints in
            constraints.top.equalTo(hotSalesView.snp.bottom).offset(5)
            constraints.trailing.equalToSuperview()
            constraints.leading.equalToSuperview()
            constraints.height.equalTo(142)
        }
    }
    
    private func setupBestSellerView() {
        self.addSubview(bestSellerView)
        bestSellerView.snp.makeConstraints { constraints in
            constraints.top.equalTo(hotSalesColletionView.snp.bottom).offset(19)
            constraints.leading.equalToSuperview()
            constraints.trailing.equalToSuperview()
        }
    }

    private func setupBestSellerLabel() {
        bestSellerView.addSubview(bestSellerLabel)
        bestSellerLabel.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.centerY.equalToSuperview()
            constraints.leading.equalToSuperview().offset(17)
        }
    }
    
    private func setupBestSellerButton() {
        bestSellerView.addSubview(bestSellerButton)
        bestSellerButton.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().offset(5)
            constraints.bottom.equalToSuperview().offset(-5)
            constraints.centerY.equalToSuperview()
            constraints.trailing.equalToSuperview().offset(-33)
            constraints.leading.equalTo(hotSalesLabel.snp.trailing).offset(5)
        }
    }
    
    private func setupPhonesCollection() {
        self.addSubview(phonesColletionView)
        phonesColletionView.snp.makeConstraints { constraints in
            constraints.top.equalTo(bestSellerView.snp.bottom).offset(5)
            constraints.trailing.equalToSuperview()
            constraints.leading.equalToSuperview()
            constraints.height.equalTo(400)
        }
    }
    
}
