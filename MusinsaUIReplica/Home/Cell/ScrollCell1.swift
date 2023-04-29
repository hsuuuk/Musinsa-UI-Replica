//
//  recommendCell5.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/13.
//

import UIKit

class ScrollCell1: UICollectionViewCell {

    let label: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.systemFont(ofSize: 14)
        lb.layer.cornerRadius = 40 / 2
        lb.layer.borderColor = UIColor.lightGray.cgColor
        lb.layer.borderWidth = 0.5
        lb.textAlignment = .center
        lb.layer.masksToBounds = true
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        label.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(index: Int) {
        switch index {
        case 0:
            label.text = "플레이"
            changeLabel()
        case 1: label.text = "부티크"
        case 2: label.text = "뷰티"
        case 3: label.text = "골프"
        case 4: label.text = "키즈"
        case 5: label.text = "어스"
        default: break
        }
    }
        
    func changeLabel() {
        label.backgroundColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
    }
    
    func resetLabel() {
        label.backgroundColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
    }
}
