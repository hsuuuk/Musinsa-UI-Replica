//
//  recommendCell4Footer.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit
import SnapKit

class recommendCell4Footer: UICollectionReusableView {
    
    lazy var Button: UIButton = {
        let bt = UIButton(type: .system)
        bt.setAttributedTitle(attributedText(firstText: "유쓰배쓰", secondText: " 브랜드 숍 바로가기   ❯"), for: .normal)
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
    
    func attributedText(firstText: String, secondText: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(string: firstText, attributes: [.font: UIFont.boldSystemFont(ofSize: 13), .foregroundColor: UIColor.black])
        attributedText.append(NSAttributedString(string: secondText, attributes: [.font: UIFont.boldSystemFont(ofSize: 13), .foregroundColor: UIColor.lightGray]))
        return attributedText
    }
}
