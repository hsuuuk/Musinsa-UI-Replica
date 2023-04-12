//
//  SectionBackgroundDecorationView.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/12.
//

import UIKit

class SectionBackgroundDecorationView: UICollectionReusableView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    func configure() {
        backgroundColor = .yellow
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
    }
}

