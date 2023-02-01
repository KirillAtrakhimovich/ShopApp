import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        generateTabBar()
        setTabBarAppearance()
    }
    
    private func generateTabBar() {
        viewControllers = [
            generateVC(
                viewController: HomeViewController(hotSalesCollectionView: HotSalesCollectionController(),
                                                   phonesCollectionView: PhonesCollection()),
                title: Constraints.explorerTitle,
                image: Constraints.explorerImage
            ),
            generateVC(
                viewController: CartViewController(),
                title: Constraints.cartTitle,
                image: Constraints.cartImage
            ),
            generateVC(
                viewController: LikedViewController(),
                title: Constraints.likedTitle,
                image: Constraints.likedImage
            ),
            generateVC(
                viewController: UserViewController(),
                title: Constraints.accountTitle,
                image: Constraints.accountImage
            )
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBarAppearance() {
        let positionX: CGFloat = 5
        let positionY: CGFloat = 7
        let width = tabBar.bounds.width - positionX * 2
        let height = tabBar.bounds.height + positionX * 2
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionX,
                y: tabBar.bounds.minY - positionY,
                width: width,
                height: height
            ),
            cornerRadius: height / 2
        )
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .white
        roundLayer.fillColor = #colorLiteral(red: 0.004242728464, green: 0.0249658227, blue: 0.2701849341, alpha: 1)
    }
}

extension TabBarController {
    struct Constraints {
        static let explorerTitle = "Explorer"
        static let explorerImage = UIImage(systemName: "globe")
        static let cartTitle = "Cart"
        static let cartImage = UIImage(systemName: "cart")
        static let likedTitle = "Liked"
        static let likedImage = UIImage(systemName: "heart")
        static let accountTitle = "Account"
        static let accountImage = UIImage(systemName: "person")
    }
}
