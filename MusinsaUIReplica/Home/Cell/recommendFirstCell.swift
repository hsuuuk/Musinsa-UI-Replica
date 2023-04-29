//
//  recommendFirstCell.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/11.
//

import UIKit

class recommendFirstCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = UIImage(named: "HomeCV1Cell1")
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.left.bottom.right.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(index: Int) {
        switch index {
        case 0: imageView.image = UIImage(named: "HS2C1")
        case 1: imageView.image = UIImage(named: "HS2C2")
        case 2: imageView.image = UIImage(named: "HS2C3")
        case 3: imageView.image = UIImage(named: "HS2C4")
        case 4: imageView.image = UIImage(named: "HS2C5")
        default: break
        }
    }
}
