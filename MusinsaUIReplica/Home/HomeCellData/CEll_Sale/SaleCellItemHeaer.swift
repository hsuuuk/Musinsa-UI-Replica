//
//  SellCellHeaer.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/05/06.
//

import UIKit
import SnapKit

class SaleCellItemHeaer: UICollectionReusableView {
    
    lazy var label: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(label)
        label.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupText(text: String){
        label.text = "  \(text)"
    }
}

