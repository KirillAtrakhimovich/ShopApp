import UIKit

class CartView: UIView {
    
    var topView: UIView = {
        let topView = UIView()
        return topView
    }()
    
    var backButton: UIButton = {
        let backButton = UIButton()
        backButton.backgroundColor = Constraints.darkBlueColor
        backButton.layer.cornerRadius = 10
        backButton.setImage(UIImage(systemName: Constraints.backButtonImage), for: .normal)
        backButton.tintColor = .white
        return backButton
    }()
    
    var addressLabel: UILabel = {
        let addressLabel = UILabel()
        addressLabel.text = Constraints.addressLabel
        addressLabel.textColor = .black
        addressLabel.font = Constraints.standartSizeFont
        return addressLabel
    }()
    
    var addressButton: UIButton = {
        let addressButton = UIButton()
        addressButton.backgroundColor = Constraints.orangeColor
        addressButton.layer.cornerRadius = 10
        addressButton.setImage(UIImage(named: Constraints.addressButtonImage), for: .normal)
        return addressButton
    }()
    
    var myCartLabel: UILabel = {
        let myCartLabel = UILabel()
        myCartLabel.text = Constraints.myCartLabel
        myCartLabel.textColor = .black
        myCartLabel.font = Constraints.biggestSizeFont
        return myCartLabel
    }()
    
    var mainView: UIView = {
        let mainView = UIView()
        mainView.backgroundColor = Constraints.darkBlueColor
        mainView.layer.cornerRadius = 30
        return mainView
    }()
    
    var checkoutButton: UIButton = {
        let checkoutButton = UIButton()
        checkoutButton.backgroundColor = Constraints.orangeColor
        checkoutButton.layer.cornerRadius = 10
        checkoutButton.titleLabel?.font = Constraints.middleSizeFont
        checkoutButton.setTitle(Constraints.checkButtonTitle, for: .normal)
        return checkoutButton
    }()
    
    var smallLine: UIView = {
        let smallLine = UIView()
        smallLine.backgroundColor = Constraints.smallLineColor
        return smallLine
    }()
    
    var deliveryView: UIView = {
        let deliveryView = UIView()
        return deliveryView
    }()
    
    var deliveryLabel: UILabel = {
        let deliveryLabel = UILabel()
        deliveryLabel.text = Constraints.deliveryLabel
        deliveryLabel.textColor = .white
        deliveryLabel.font = Constraints.standartSizeFont
        return deliveryLabel
    }()
    
    var deliveryPrice: UILabel = {
        let deliveryPrice = UILabel()
        deliveryPrice.text = Constraints.deliveryPrice
        deliveryPrice.textColor = .white
        deliveryPrice.font = Constraints.standartSizeFont
        return deliveryPrice
    }()
    
    var totalView: UIView = {
        let totalView = UIView()
        return totalView
    }()
    
    var totalLabel: UILabel = {
        let totalLabel = UILabel()
        totalLabel.text = Constraints.totalLabel
        totalLabel.textColor = .white
        totalLabel.font = Constraints.standartSizeFont
        return totalLabel
    }()
    
    var totalPrice: UILabel = {
        let totalPrice = UILabel()
        totalPrice.text = Constraints.totalPrice
        totalPrice.textColor = .white
        totalPrice.font = Constraints.standartSizeFont
        return totalPrice
    }()
    
    var bigLine: UIView = {
        let bigLine = UIView()
        bigLine.backgroundColor = Constraints.bigLineColor
        return bigLine
    }()
    
    var cartTableView: UITableView = {
        let cartTableView = UITableView()
        cartTableView.backgroundColor = .white
        return cartTableView
    }()
    
    func setup() {
        setupContentPrioritySettings()
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
    
    private func setupContentPrioritySettings() {
        deliveryPrice.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: .horizontal)
        deliveryPrice.setContentHuggingPriority(UILayoutPriority.defaultHigh, for:.horizontal)
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

extension CartView {
    struct Constraints {
        static let backButtonImage = "chevron.backward"
        static let addressLabel = "Add address"
        static let standartSizeFont = UIFont(name: "Mark Pro", size: 15)
        static let addressButtonImage = "full_loc_image"
        static let myCartLabel = "My Cart"
        static let biggestSizeFont = UIFont(name: "Mark Pro", size: 35)
        static let middleSizeFont = UIFont(name: "Mark Pro", size: 20)
        static let checkButtonTitle = "Checkout"
        static let deliveryLabel = "Delivery"
        static let deliveryPrice = "Free"
        static let totalLabel = "Total"
        static let totalPrice = "$6,000 us"
        static let orangeColor = #colorLiteral(red: 1, green: 0.5189241767, blue: 0.3763272166, alpha: 1)
        static let smallLineColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 0.9999999404, alpha: 0.2044064351)
        static let bigLineColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 0.9999999404, alpha: 0.2514150253)
        static let darkBlueColor = #colorLiteral(red: 0.003921568627, green: 0, blue: 0.2078431373, alpha: 1)
    }
}
