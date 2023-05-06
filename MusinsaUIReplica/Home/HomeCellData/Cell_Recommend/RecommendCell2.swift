//
//  recommendCell.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/11.
//

import UIKit

class RecommendCell2: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 15
        iv.clipsToBounds = true
        iv.image = UIImage(named: "HomeCV1Cell4")
        return iv
    }()
    
    let label: UILabel = {
        let lb = UILabel()
        lb.text = "스포츠"
        lb.font = UIFont.systemFont(ofSize: 14)
        lb.textAlignment = .center
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.height.width.equalTo(55)
        }

        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(7)
            make.width.equalTo(imageView.snp.width)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure1(index: Int) {
        switch index {
        case 0: label.text = "럭셔리"
        case 1: label.text = "뷰티"
        case 2: label.text = "스포츠"
        case 3: label.text = "아울렛"
        case 4: label.text = "키즈"
        default: break
        }
        
        switch index {
        case 0: imageView.image = UIImage(named: "HS3C1")
        case 1: imageView.image = UIImage(named: "HS3C2")
        case 2: imageView.image = UIImage(named: "HS3C3")
        case 3: imageView.image = UIImage(named: "HS3C4")
        case 4: imageView.image = UIImage(named: "HS3C5")
        default: break
        }
    }
    
    func configure2(index: Int) {
        switch index {
        case 0: label.text = "골프"
        case 1: label.text = "어스"
        case 2: label.text = "체험단"
        case 3: label.text = "힙/딥"
        case 4: label.text = "첫구매혜택"
        default: break
        }
        
        switch index {
        case 0: imageView.image = UIImage(named: "HS4C1")
        case 1: imageView.image = UIImage(named: "HS4C2")
        case 2: imageView.image = UIImage(named: "HS4C3")
        case 3: imageView.image = UIImage(named: "HS4C4")
        case 4: imageView.image = UIImage(named: "HS3C1")
        default: break
        }
    }
}
