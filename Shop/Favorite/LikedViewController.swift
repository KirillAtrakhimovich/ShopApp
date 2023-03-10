import UIKit

class LikedViewController: UIViewController {
    
    private let likedView = LikedView()
    
    override func loadView() {
        view = likedView
    }
    
    override func viewDidLoad() {
       super.viewDidLoad()
        likedView.backgroundColor = .orange
       
        likedView.collectionView.collectionViewLayout = layout()
        likedView.collectionView.dataSource = self
//        likedView.collectionView.delegate = self
     }

     func layout() -> UICollectionViewCompositionalLayout {
       
       let layout = UICollectionViewCompositionalLayout { sectionIndex, environment -> NSCollectionLayoutSection? in
           let col = UICollectionView(frame: .zero, collectionViewLayout: layout)
         if sectionIndex == 0 {
           let itemSize = NSCollectionLayoutSize (
             widthDimension: .fractionalWidth(1.0),
             heightDimension: .estimated(400)
           )
           let item = NSCollectionLayoutItem(layoutSize: itemSize)
           
           let groupSize = NSCollectionLayoutSize (
             widthDimension: .fractionalWidth(1.0),
             heightDimension: .estimated(400)
           )

           let columns = environment.container.contentSize.width > 500 ? 2 : 1
           
           let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: columns)
           
           
           group.interItemSpacing = .fixed(20)
           
           if columns > 1 {
             group.contentInsets.leading = 20
             group.contentInsets.trailing = 20
           }
           
           
           let section = NSCollectionLayoutSection(group: group)
           
           section.interGroupSpacing = 20
           section.contentInsets.top = 20
           
           return section
         }
         
         let itemSize = NSCollectionLayoutSize (
           widthDimension: .fractionalWidth(1.0),
           heightDimension: .fractionalHeight(0.2)
         )
         let item = NSCollectionLayoutItem(layoutSize: itemSize)
         
         let groupSize = NSCollectionLayoutSize (
           widthDimension: .fractionalWidth(0.2),
           heightDimension: .absolute(200)
         )
         
         let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
         
         group.interItemSpacing = .flexible(10)
         
         let section = NSCollectionLayoutSection(group: group)
         
         section.interGroupSpacing = 50
         
         section.orthogonalScrollingBehavior = .continuous
         
         return section
       }
       
       let config = UICollectionViewCompositionalLayoutConfiguration()
       config.interSectionSpacing = 50
       layout.configuration = config
       
       return layout
     }
   }

   extension LikedViewController: UICollectionViewDataSource {
     
     func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 2
     }
     
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 50
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellLayout", for: indexPath)
       
       cell.backgroundColor = UIColor.systemPink
     
       
       return cell
     }
     
     
     
     
   }
    

