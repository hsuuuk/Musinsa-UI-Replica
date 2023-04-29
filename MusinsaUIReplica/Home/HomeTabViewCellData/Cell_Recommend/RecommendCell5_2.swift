//
//  ScrollCell2.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit

class RecommendCell5_2: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 15
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
        case 0: imageView.image = UIImage(named: "HS10C1")
        case 4: imageView.image = UIImage(named: "HS10C5")
        case 8: imageView.image = UIImage(named: "HS10C9")
        case 12: imageView.image = UIImage(named: "HS10C17")
        case 16: imageView.image = UIImage(named: "HS10C13")
        case 20: imageView.image = UIImage(named: "HS10C21")
        default: break
        }
    }
}

