//
//  recommendCell3Footer.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit
import SnapKit

class RecommendCell3Footer: UICollectionReusableView {
    
    let Button: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("내가 좋아할 만한 상품   ❯", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        bt.layer.cornerRadius = 50 / 2
        bt.layer.borderColor = UIColor.lightGray.cgColor
        bt.layer.borderWidth = 0.5
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //backgroundColor = .gray
        addSubview(Button)
        Button.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(5)
            make.right.equalToSuperview().offset(-5)
            make.height.equalTo(45)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
