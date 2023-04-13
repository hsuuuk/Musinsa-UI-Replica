//
//  recommendCell3Header.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit
import SnapKit

class recommendCell3Header: UICollectionReusableView {
    
    let lable: UILabel = {
        let lb = UILabel()
        lb.text = "스포츠"
        lb.font = UIFont.systemFont(ofSize: 20)
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .gray
        addSubview(lable)
        lable.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

