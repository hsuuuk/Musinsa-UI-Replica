//
//  SellCEll1.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/05/06.
//

import UIKit

class SaleCell1: UICollectionViewCell {
        
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupImage1(index: Int) {
        switch index {
        case 0: imageView.image = UIImage(named: "SaleCell1")
        case 1: imageView.image = UIImage(named: "SaleCell2")
        default: break
        }
    }
    
    func setupImage2(index: Int) {
        switch index {
        case 0: imageView.image = UIImage(named: "SaleCell3")
        case 1: imageView.image = UIImage(named: "SaleCell4")
        case 2: imageView.image = UIImage(named: "SaleCell5")
        case 3: imageView.image = UIImage(named: "SaleCell6")
        case 4: imageView.image = UIImage(named: "SaleCell7")
        default: break
        }
    }
}

