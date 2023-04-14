//
//  ScrollCell2.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit

class ScrollCell2: UICollectionViewCell {
    
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
}

