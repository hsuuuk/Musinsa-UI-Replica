//
//  CategoryTopTabViewCell.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/30.
//

import UIKit
import SnapKit

class CategoryTopTabViewCell: UICollectionViewCell {
    
    static let identifier = "CategoryTopTabViewCell"
    
    var imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 17
        iv.backgroundColor = .gray
        return iv
    }()
    
    var label: UILabel = {
        let lb = UILabel()
        lb.font = .systemFont(ofSize: 12)
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
    
    func setupImage(index: Int) {
        switch index {
        case 0: imageView.image = UIImage(named: "CategoryTopTabView1")
        case 1: imageView.image = UIImage(named: "CategoryTopTabView2")
        case 2: imageView.image = UIImage(named: "CategoryTopTabView3")
        case 3: imageView.image = UIImage(named: "CategoryTopTabView4")
        case 4: imageView.image = UIImage(named: "CategoryTopTabView5")
        case 5: imageView.image = UIImage(named: "CategoryTopTabView6")
        default: imageView.image = UIImage(named: "CategoryTopTabView7")
        }
    }
    
    func setupLayout() {
        [imageView, label].forEach { addSubview($0) }
        
        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            
            make.width.height.equalTo(50)
        }
        
        label.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(20)
        }
    }
}
