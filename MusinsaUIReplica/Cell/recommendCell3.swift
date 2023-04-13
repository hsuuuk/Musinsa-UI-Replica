//
//  recommendCell3.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit

class recommendCell3: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = UIImage(named: "HomeCV1Cell4")
        return iv
    }()
    
    let brandLabel: UILabel = {
        let lb = UILabel()
        lb.text = "커버낫"
        lb.font = UIFont.systemFont(ofSize: 13)
        lb.textColor = .gray
        lb.textAlignment = .left
        return lb
    }()
    
    let priceLabel: UILabel = {
        let lb = UILabel()
        lb.text = "76,300원"
        lb.font = UIFont.systemFont(ofSize: 14)
        return lb
    }()
    
    let saleLabel: UILabel = {
        let lb = UILabel()
        lb.text = ""
        lb.font = UIFont.systemFont(ofSize: 12)
        lb.textColor = .red
        lb.textAlignment = .right
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(150)
        }

        contentView.addSubview(brandLabel)
        brandLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(7)
            make.left.right.equalToSuperview()
        }
        
        let stack = UIStackView(arrangedSubviews: [priceLabel, saleLabel])
        stack.axis = .horizontal
        stack.distribution = .fillEqually

        contentView.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.top.equalTo(brandLabel.snp.bottom).offset(3)
            make.left.right.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

let imageView: UIImageView = {
    let iv = UIImageView()
    iv.contentMode = .scaleAspectFill
    iv.clipsToBounds = true
    iv.image = UIImage(named: "HomeCV1Cell4")
    return iv
}()
