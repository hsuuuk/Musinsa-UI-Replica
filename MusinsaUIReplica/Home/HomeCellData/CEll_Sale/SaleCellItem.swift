//
//  SaleCell3.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/05/01.
//

import UIKit

class SaleCellItem: UICollectionViewCell {
        
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let brandLabel: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.systemFont(ofSize: 13)
        lb.textColor = .gray
        lb.textAlignment = .left
        return lb
    }()
    
    let priceLabel: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.systemFont(ofSize: 14)
        return lb
    }()
    
    let saleLabel: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.systemFont(ofSize: 12)
        lb.textColor = .red
        lb.textAlignment = .right
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            //make.height.equalTo(10)
        }

        contentView.addSubview(brandLabel)
        brandLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(10)
            make.left.right.equalToSuperview()
            make.height.equalTo(10)
        }
        
        let stack = UIStackView(arrangedSubviews: [priceLabel, saleLabel])
        stack.axis = .horizontal
        stack.distribution = .fillProportionally

        contentView.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.top.equalTo(brandLabel.snp.bottom).offset(10)
            make.left.right.equalToSuperview()
            make.height.equalTo(10)
            make.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupImage1(index: Int) {
        switch index {
        case 0: brandLabel.text = "반스"
        case 1: brandLabel.text = "트릴리온"
        case 2: brandLabel.text = "트래블"
        case 3: priceLabel.text = "카멜워크"
        case 4: priceLabel.text = "시그니쳐"
        case 5: priceLabel.text = "무신사 스탠다드"
        case 6: priceLabel.text = "반스"
        default: break
        }
        
        switch index {
        case 0: priceLabel.text = "33,000원"
        case 1: priceLabel.text = "85,000원"
        case 2: priceLabel.text = "56,700원"
        case 3: priceLabel.text = "85,000원"
        case 4: priceLabel.text = "85,000원"
        case 5: priceLabel.text = "85,000원"
        case 6: priceLabel.text = "85,000원"
        default: break
        }
        
        switch index {
        case 0: saleLabel.text = "50%"
        case 1: saleLabel.text = "70%"
        case 2: saleLabel.text = "40%"
        case 3: saleLabel.text = "55%"
        case 4: saleLabel.text = "25%"
        case 5: saleLabel.text = "70%"
        case 6: saleLabel.text = "30%"
        default: break
        }
        
        switch index {
        case 0: imageView.image = UIImage(named: "SaleCellItem1")
        case 1: imageView.image = UIImage(named: "SaleCellItem2")
        case 2: imageView.image = UIImage(named: "SaleCellItem3")
        case 3: imageView.image = UIImage(named: "SaleCellItem4")
        case 4: imageView.image = UIImage(named: "SaleCellItem5")
        case 5: imageView.image = UIImage(named: "SaleCellItem6")
        case 6: imageView.image = UIImage(named: "SaleCellItem1")
        default: break
        }
    }
    
    func setupImage2(index: Int) {
        switch index {
        case 0: brandLabel.text = "그린조이"
        case 1: brandLabel.text = "그린조이"
        case 2: brandLabel.text = "그린조이"
        case 3: brandLabel.text = "그린조이"
        case 4: brandLabel.text = "그린조이"
        case 5: brandLabel.text = "그린조이"
        default: break
        }
        
        switch index {
        case 0: priceLabel.text = "158,000원"
        case 1: priceLabel.text = "138,300원"
        case 2: priceLabel.text = "189,000원"
        case 3: priceLabel.text = "47,000원"
        case 4: priceLabel.text = "59,500원"
        case 5: priceLabel.text = "44,500원"
        default: break
        }
        
        switch index {
        case 0: saleLabel.text = "87%"
        case 1: saleLabel.text = "71%"
        case 2: saleLabel.text = "71%"
        case 3: saleLabel.text = "50%"
        case 4: saleLabel.text = "60%"
        case 5: saleLabel.text = "67%"
        default: break
        }
        
        switch index {
        case 0: imageView.image = UIImage(named: "SaleCellItem7")
        case 1: imageView.image = UIImage(named: "SaleCellItem8")
        case 2: imageView.image = UIImage(named: "SaleCellItem9")
        case 3: imageView.image = UIImage(named: "SaleCellItem10")
        case 4: imageView.image = UIImage(named: "SaleCellItem11")
        case 5: imageView.image = UIImage(named: "SaleCellItem7")
        default: break
        }
    }
}
