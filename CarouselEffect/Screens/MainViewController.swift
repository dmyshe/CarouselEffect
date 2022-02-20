import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    // MARK: Views
    private lazy var headerView: HeaderView = {
        let headerView = HeaderView()
        return headerView
    }()
    
    private lazy var discroverButton: UIButton = {
        let button = UIButton()
        button.setTitle("Discrover", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        return button
    }()
    
    private lazy var editProfileButton: UIButton = {
        let button = UIButton()
        button.setTitle("Edit Profile", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        return button
    }()
    
//    private lazy var collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal
//        let collectionView = UICollectionView(frame: .zero,
//                                              collectionViewLayout: layout)
//        collectionView.isHidden = true
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        collectionView.backgroundColor = .systemGray6
////        collectionView.register(CardCollectionViewCell.self, forCellWithReuseIdentifier: CardCollectionViewCell.identifier)
//        return collectionView
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUserInterface()
        makeConstraints()
    }
    
    private func setupUserInterface() {
        view.backgroundColor = .systemBackground

        [headerView,discroverButton,editProfileButton].forEach { v in
            view.addSubview(v)
        }
    }
    
    private func makeConstraints() {
        headerView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin)
            make.left.right.equalToSuperview().inset(16)
        }
        discroverButton.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottomMargin)
        }
        
        editProfileButton.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(16)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottomMargin)
        }
    }
}

// MARK: UICollectionViewDataSource
//extension MainViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//
//
//}

// MARK: UICollectionViewDelegate
extension MainViewController: UICollectionViewDelegate {
    
}

//// MARK: UICollectionViewDelegateFlowLayout
//extension MainViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: Constants.UI.Layout.collectionViewCellWidth,
//                      height: Constants.UI.Layout.collectionViewCellHeight)
//    }
//}
