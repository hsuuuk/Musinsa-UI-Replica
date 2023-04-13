//
//  recommendCell4.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit

class recommendCell4: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 70 / 2
        iv.clipsToBounds = true
        iv.image = UIImage(named: "HomeCV1Cell4")
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
            //make.left.equalToSuperview()
            make.height.width.equalTo(70)
        }

        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(7)
            make.centerX.equalToSuperview()
            make.left.right.equalToSuperview()
            //make.width.equalTo(imageView.snp.width)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
