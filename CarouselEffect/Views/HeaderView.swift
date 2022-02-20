import Foundation
import UIKit


class HeaderView: UIView {
    
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
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        [titleLabel,accountImage,separator].forEach { v in
            self.addSubview(v)
        }
        setupConstraints()
    }
    private func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().inset(16)
        }

        accountImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.equalToSuperview().inset(16)
            make.height.width.equalTo(36)
        }
        
        separator.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp_bottomMargin).inset(-16)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(1)
        }
    }
}
