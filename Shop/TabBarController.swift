//
//  TabBarController.swift
//  Shop
//
//  Created by Kirill Atrakhimovich on 22.12.22.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        generateTabBar()
        setTabBarAppearance()
    }
    
    private func generateTabBar() {
        viewControllers = [
            generateVC(
                viewController: HomeViewController(),
                title: "Explorer",
                image: nil
            ),
            generateVC(
                viewController: CartViewController(),
                title: "",
                image: UIImage(systemName: "cart")
            ),
            generateVC(
                viewController: FavoriteViewController(),
                title: "",
                image: UIImage(systemName: "heart")
            ),
            generateVC(
                viewController: UserViewController(),
                title: "",
                image: UIImage(systemName: "person")
            )
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBarAppearance() {
        let positionX: CGFloat = 0
        let positionY: CGFloat = 14
        var width = tabBar.bounds.width
        width = 414
        var height = tabBar.bounds.height
        height = 72
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
