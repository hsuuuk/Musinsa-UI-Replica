//
//  PagingTabBarCell.swift
//  PagingTabBar
//
//  Created by 심현석 on 2023/04/27.
//

import UIKit
import SnapKit

class HomeTabBarCell: UICollectionViewCell {
    
    static let identifier = "PagingTabBarCell"
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .semibold)
        label.textColor = .secondaryLabel
        label.textAlignment = .center
        return label
    }()
    
    private lazy var underline: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.alpha = 0.0
        return view
    }()
    
    // Cell이 선택 되었을 때 설정
    override var isSelected: Bool {
        didSet {
            titleLabel.textColor = isSelected ? .systemPink : .secondaryLabel
            underline.alpha = isSelected ? 1.0 : 0.0
        }
    }
    
    func setupView(title: String) {
        titleLabel.text = title
        setupLayout()
    }
    
    func setupLayout() {
        [titleLabel, underline].forEach { addSubview($0) }
        
        titleLabel.snp.makeConstraints { make in
            make.leading.top.trailing.equalToSuperview()
        }
        
        underline.snp.makeConstraints { make in
            make.height.equalTo(2.0)
            make.top.equalTo(titleLabel.snp.bottom).offset(4.0)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
}
