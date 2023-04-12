//
//  recommendCell.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/11.
//

import UIKit

class recommendSecondCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 5
        iv.clipsToBounds = true
        return iv
    }()
    
    let label: UILabel = {
        let lb = UILabel()
        lb.text = "스포츠"
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stack = UIStackView(arrangedSubviews: [imageView, label])
        stack.distribution = .fillEqually
        addSubview(stack)
        stack.snp.makeConstraints { make in
            make.top.left.bottom.right.equalToSuperview()
            //make.height.equalTo(50)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
