//
//  TopCell.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/12.
//

import UIKit

class TopCell: UICollectionViewCell {
    
    let button: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitleColor(.lightGray, for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        bt.sizeToFit()
        bt.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(button)
        button.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        let buttonSize = button.sizeThatFits(size)
        return CGSize(width: buttonSize.width, height: buttonSize.height)
    }
    
    @objc func buttonTapped() {
    }
}
