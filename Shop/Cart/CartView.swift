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
        smallLine.backgroundColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 0.9999999404, alpha: 0.2044064351)
        return smallLine
    }()
    
    var deliveryView: UIView = {
        let deliveryView = UIView()
        return deliveryView
    }()
    
    var deliveryLabel: UILabel = {
        let deliveryLabel = UILabel()
        deliveryLabel.text = "Delivery"
        deliveryLabel.textColor = .white
        deliveryLabel.font = UIFont(name: "Mark Pro", size: 15)
        return deliveryLabel
    }()
    
    var deliveryPrice: UILabel = {
        let deliveryPrice = UILabel()
        deliveryPrice.text = "Free"
        deliveryPrice.textColor = .white
        deliveryPrice.font = UIFont(name: "Mark Pro", size: 15)
        return deliveryPrice
    }()
    
    var totalView: UIView = {
        let totalView = UIView()
        return totalView
    }()
    
    var totalLabel: UILabel = {
        let totalLabel = UILabel()
        totalLabel.text = "Total"
        totalLabel.textColor = .white
        totalLabel.font = UIFont(name: "Mark Pro", size: 15)
        return totalLabel
    }()
    
    var totalPrice: UILabel = {
        let totalPrice = UILabel()
        totalPrice.text = "$6,000 us"
        totalPrice.textColor = .white
        totalPrice.font = UIFont(name: "Mark Pro", size: 15)
        return totalPrice
    }()
    
    var bigLine: UIView = {
        let bigLine = UIView()
        bigLine.backgroundColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 0.9999999404, alpha: 0.2514150253)
        return bigLine
    }()
    
    var cartTableView: UITableView = {
        let cartTableView = UITableView()
        cartTableView.backgroundColor = .white
        return cartTableView
    }()
    
    func setup() {
        
        deliveryPrice.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: .horizontal)
        deliveryPrice.setContentHuggingPriority(UILayoutPriority.defaultHigh, for:.horizontal)
        
        setupTopView()
        setupBackButton()
        setupAdressLabel()
        setupAdressButton()
        setupMyCartLabel()
        setupMainView()
        setupCheckoutButton()
        setupSmallLine()
        setupDeliveryView()
        setupDeliveryLabel()
        setupDeliveryPrice()
        setupTotalView()
        setupTotalLabel()
        setupTotalPrice()
        setupBigLine()
        setupCartTableView()
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
            constraints.top.equalTo(backButton.snp.bottom).offset(30)
            constraints.leading.equalToSuperview().offset(42)
            constraints.trailing.equalToSuperview().offset(-100)
        }
    }
    
    private func setupMainView() {
        self.addSubview(mainView)
        mainView.snp.makeConstraints { constraints in
            constraints.top.equalTo(myCartLabel.snp.bottom).offset(29)
            constraints.leading.equalToSuperview().offset(5)
            constraints.trailing.equalToSuperview().offset(-5)
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
        deliveryView.addSubview(deliveryLabel)
        deliveryLabel.snp.makeConstraints { constraints in
            constraints.top.bottom.equalToSuperview()
            constraints.leading.equalToSuperview().offset(55)
        }
    }
    
    private func setupDeliveryPrice() {
        deliveryView.addSubview(deliveryPrice)
        deliveryPrice.snp.makeConstraints { constraints in
            constraints.top.bottom.equalToSuperview()
            constraints.trailing.equalToSuperview().offset(-76)
            constraints.leading.equalTo(deliveryLabel.snp.trailing).offset(5)
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
        totalView.addSubview(totalLabel)
        totalLabel.snp.makeConstraints { constraints in
            constraints.top.bottom.equalToSuperview()
            constraints.leading.equalToSuperview().offset(55)
        }
    }
    
    private func setupTotalPrice() {
        totalView.addSubview(totalPrice)
        totalPrice.snp.makeConstraints { constraints in
            constraints.top.bottom.equalToSuperview()
            constraints.trailing.equalToSuperview().offset(-76)
            constraints.leading.equalTo(totalLabel.snp.trailing).offset(5)
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
    
    private func setupCartTableView() {
        mainView.addSubview(cartTableView)
        cartTableView.snp.makeConstraints { constraints in
            constraints.leading.equalToSuperview().offset(20)
            constraints.trailing.equalToSuperview().offset(-20)
            constraints.bottom.equalTo(bigLine.snp.top).offset(-20)
            constraints.top.equalToSuperview().offset(20)
        }
    }
}
