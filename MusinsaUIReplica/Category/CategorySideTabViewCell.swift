//
//  CategoryTopTabViewCell.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/30.
//

import UIKit
import SnapKit

class CategorySideTabViewCell: UICollectionViewCell {
    
    static let identifier = "CategorySideTabViewCell"

    var label: UILabel = {
        let lb = UILabel()
        lb.font = .systemFont(ofSize: 14.0)
        lb.textColor = .secondaryLabel
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isSelected: Bool {
        didSet {
            label.backgroundColor = isSelected ? .systemGray6 : .white
            label.font = isSelected
            ? UIFont.systemFont(ofSize: 14, weight: .black)
            : UIFont.systemFont(ofSize: 14, weight: .regular)
            label.textColor = isSelected ? .black : .secondaryLabel
        }
    }
    
    func attributedText(secondText: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(string: "    ", attributes: [.font: UIFont.systemFont(ofSize: 15), .foregroundColor: UIColor.black])
        attributedText.append(NSAttributedString(string: secondText, attributes: [.font: UIFont.systemFont(ofSize: 15), .foregroundColor: UIColor.secondaryLabel]))
        return attributedText
    }
    
    func setupLayout() {
        addSubview(label)
        
        label.snp.makeConstraints { make in
            make.top.right.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(0)
        }
    }
}
