import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    // MARK: Views
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Interests"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        return label
    }()

    private lazy var accountImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "avatar")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var separator : UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
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
        
        view.addSubview(titleLabel)
        view.addSubview(accountImage)
        view.addSubview(separator)
        view.addSubview(discroverButton)
        view.addSubview(editProfileButton)
    }
    
    private func makeConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin)
            make.left.equalToSuperview().inset(16)
        }

        accountImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin)
            make.right.equalToSuperview().inset(16)
            make.height.width.equalTo(36)
        }
        
        separator.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp_bottomMargin).inset(-16)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(1)
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
