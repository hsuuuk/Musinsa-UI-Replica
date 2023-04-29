//
//  ScrollHeader.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/14.
//

import UIKit
import SnapKit

class RecommendCell5Header: UICollectionReusableView {
    
    lazy var lable: UILabel = {
        let lb = UILabel()
        lb.text = "무신사의 감격있는 전문관"
        lb.font = UIFont.boldSystemFont(ofSize: 18)
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(lable)
        lable.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(5)
            make.bottom.equalToSuperview().offset(-15)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
