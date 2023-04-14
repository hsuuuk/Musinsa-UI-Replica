//
//  recommendCell5.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit

class ScrollCell1: UICollectionViewCell {

    let lable: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.systemFont(ofSize: 14)
        lb.layer.cornerRadius = 40 / 2
        lb.layer.borderColor = UIColor.lightGray.cgColor
        lb.layer.borderWidth = 0.5
        lb.textAlignment = .center
        lb.sizeToFit()
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(lable)
        lable.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
