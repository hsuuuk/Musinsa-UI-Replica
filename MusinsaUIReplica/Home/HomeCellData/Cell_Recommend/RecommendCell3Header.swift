//
//  recommendCell3Header.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit
import SnapKit

class RecommendCell3Header: UICollectionReusableView {
    
    lazy var lable: UILabel = {
        let lb = UILabel()
        lb.attributedText = attributedStateText(firstText: "hsuuuk님", secondText: "의 취향저격 상품")
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(lable)
        lable.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func attributedStateText(firstText: String, secondText: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(string: firstText, attributes: [.font: UIFont.boldSystemFont(ofSize: 18), .foregroundColor: UIColor.black])
        attributedText.append(NSAttributedString(string: secondText, attributes: [.font: UIFont.boldSystemFont(ofSize: 18), .foregroundColor: UIColor.lightGray]))
        return attributedText
    }
}



