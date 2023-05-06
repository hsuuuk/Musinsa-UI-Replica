//
//  recommendCell4.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit

class RecommendCell4: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 70 / 2
        iv.clipsToBounds = true
        iv.image = UIImage(named: "HomeCV1Cell4")
        iv.layer.borderWidth = 0.5
        iv.layer.borderColor = UIColor.lightGray.cgColor
        return iv
    }()
    
    let label: UILabel = {
        let lb = UILabel()
        lb.text = "프라이"
        lb.font = UIFont.systemFont(ofSize: 14)
        lb.textAlignment = .center
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
            make.height.width.equalTo(70)
        }

        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(7)
            make.centerX.equalToSuperview()
            make.left.right.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(index: Int) {
        switch index {
        case 0: label.text = "유쓰배쓰"
        case 1: label.text = "블랙엔드"
        case 2: label.text = "살롱드키"
        case 3: label.text = "프라이"
        case 4: label.text = "런디에스"
        case 5: label.text = "마이딥블루메리지"
        case 6: label.text = "패슬"
        case 7: label.text = "돈애스크마이플랜"
        default: break
        }
        
        switch index {
        case 0: imageView.image = UIImage(named: "HS7C8")
        case 1: imageView.image = UIImage(named: "HS7C2")
        case 2: imageView.image = UIImage(named: "HS7C3")
        case 3: imageView.image = UIImage(named: "HS7C4")
        case 4: imageView.image = UIImage(named: "HS7C5")
        case 5: imageView.image = UIImage(named: "HS7C6")
        case 6: imageView.image = UIImage(named: "HS7C7")
        case 7: imageView.image = UIImage(named: "HS7C1")
        default: break
        }
    }
}
