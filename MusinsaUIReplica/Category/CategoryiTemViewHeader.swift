//
//  CategoryiTemViewHeader.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/05/01.
//

import UIKit

class CategoryiTemViewHeader: UICollectionReusableView {
    
    static let identifier = "CategoryiTemViewHeader"
    
    let label: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.systemFont(ofSize: 15, weight: .black)
        lb.textColor = .secondaryLabel
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func attributedText(firstText: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(string: firstText, attributes: [.font: UIFont.systemFont(ofSize: 15, weight: .black), .foregroundColor: UIColor.secondaryLabel])
        attributedText.append(NSAttributedString(string: "  ❯", attributes: [.font: UIFont.systemFont(ofSize: 15), .foregroundColor: UIColor.secondaryLabel]))
        return attributedText
    }
}

