import UIKit

class HotSalesCollectionController: NSObject, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: Constraints.identifier,
                                                        for: indexPath)
            myCell.backgroundColor = .blue
            return myCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 378, height: 182)
    }
}

extension HotSalesCollectionController {
    struct Constraints {
        static let identifier = "hotSalesCell"
    }
}
