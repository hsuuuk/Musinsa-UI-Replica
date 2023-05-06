//
//  CategoryiTemViewCell.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/30.
//

import UIKit
import SnapKit

class CategoryiTemViewCell: UICollectionViewCell {
    
    static let identifier = "CategoryiTemViewCell"
    
    var imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 20
        iv.backgroundColor = .gray
        return iv
    }()
    
    var label: UILabel = {
        let lb = UILabel()
        lb.font = .systemFont(ofSize: 14)
        lb.textColor = .black
        lb.textAlignment = .center
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        [imageView, label].forEach { addSubview($0) }
        
        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.width.height.equalTo(70)
        }
        
        label.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom)
            make.leading.bottom.trailing.equalToSuperview()
        }
    }
}
