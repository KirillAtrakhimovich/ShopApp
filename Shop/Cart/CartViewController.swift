import UIKit

class CartViewController: UIViewController {
    
    private let cartView = CartView()
    
    override func loadView() {
        view = cartView
    }
    
    override func viewDidLoad() {
        cartView.backgroundColor = .white
        cartView.setup()
        
    }
}
