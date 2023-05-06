//
//  SaleCell3.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/05/01.
//

import UIKit

class SaleCell3: UICollectionViewCell {
    
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
            make.height.equalTo(150)
        }

        contentView.addSubview(brandLabel)
        brandLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(7)
            make.left.right.equalToSuperview()
        }
        
        let stack = UIStackView(arrangedSubviews: [priceLabel, saleLabel])
        stack.axis = .horizontal
        stack.distribution = .fillProportionally

        contentView.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.top.equalTo(brandLabel.snp.bottom).offset(3)
            make.left.right.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure1(index: Int) {
        switch index {
        case 0: brandLabel.text = "락피쉬웨더웨어"
        case 1: brandLabel.text = "돈애스크마이플랜"
        case 2: brandLabel.text = "프라이"
        default: break
        }
        
        switch index {
        case 0: priceLabel.text = "33,000원"
        case 1: priceLabel.text = "85,000원"
        case 2: priceLabel.text = "56,700원"
        default: break
        }
        
        switch index {
        case 0: saleLabel.text = "25%"
        case 2: saleLabel.text = "70%"
        default: break
        }
        
        switch index {
        case 0: imageView.image = UIImage(named: "HS5C1")
        case 1: imageView.image = UIImage(named: "HS5C2")
        case 2: imageView.image = UIImage(named: "HS5C3")
        default: break
        }
    }
    
    func configure2(index: Int) {
        switch index {
        case 0: brandLabel.text = "돈애스크마이플랜"
        case 1: brandLabel.text = "커버낫"
        case 2: brandLabel.text = "프라이"
        default: break
        }
        
        switch index {
        case 0: priceLabel.text = "30,000원"
        case 1: priceLabel.text = "55,300원"
        case 2: priceLabel.text = "69,000원"
        default: break
        }
        
        switch index {
        case 1: saleLabel.text = "35%"
        default: break
        }
        
        switch index {
        case 0: imageView.image = UIImage(named: "HS6C1")
        case 1: imageView.image = UIImage(named: "HS6C2")
        case 2: imageView.image = UIImage(named: "HS6C3")
        default: break
        }
    }
    
    func configure3(index: Int) {
        switch index {
        case 0: brandLabel.text = "엔조이 래글런 바시티점퍼"
        case 1: brandLabel.text = "패치워크 데님 팬츠"
        case 2: brandLabel.text = "피그먼트 집업 코치 자켓"
        case 3: brandLabel.text = "1984 2way 조거팬츠"
        case 4: brandLabel.text = "드래곤 후드 집업 - 블랙"
        case 5: brandLabel.text = "코튼 와이드 스트링팬츠"
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
        case 3: saleLabel.text = "50%"
        case 4: saleLabel.text = "50%"
        case 5: saleLabel.text = "50%"
        default: break
        }
        
        switch index {
        case 0: imageView.image = UIImage(named: "HS8C1")
        case 1: imageView.image = UIImage(named: "HS8C2")
        case 2: imageView.image = UIImage(named: "HS8C3")
        case 3: imageView.image = UIImage(named: "HS8C4")
        case 4: imageView.image = UIImage(named: "HS8C5")
        case 5: imageView.image = UIImage(named: "HS8C6")
        default: break
        }
    }

    func configure4(index: Int) {
        switch index {
        case 0: brandLabel.text = "엔조이 래글런 바시티점퍼"
        case 1: brandLabel.text = "체크보드 카라 집업 가디건"
        case 2: brandLabel.text = "파이어 니트 가디건점퍼"
        case 3: brandLabel.text = "스네이크 2way 조거팬츠"
        case 4: brandLabel.text = "B로고 하프 집업 맨투맨"
        case 5: brandLabel.text = "시그니처 로고 2way 조거팬츠"
        default: break
        }
        
        switch index {
        case 0: priceLabel.text = "158,000원"
        case 1: priceLabel.text = "114,400원"
        case 2: priceLabel.text = "103,600원"
        case 3: priceLabel.text = "49,500원"
        case 4: priceLabel.text = "36,300원"
        case 5: priceLabel.text = "39,500원"
        default: break
        }
        
        switch index {
        case 1: saleLabel.text = "20%"
        case 2: saleLabel.text = "30%"
        case 3: saleLabel.text = "35%"
        case 4: saleLabel.text = "50%"
        case 5: saleLabel.text = "30%"
        default: break
        }
        
        switch index {
        case 0: imageView.image = UIImage(named: "HS9C1")
        case 1: imageView.image = UIImage(named: "HS9C2")
        case 2: imageView.image = UIImage(named: "HS9C3")
        case 3: imageView.image = UIImage(named: "HS9C4")
        case 4: imageView.image = UIImage(named: "HS9C5")
        case 5: imageView.image = UIImage(named: "HS9C6")
        default: break
        }
    }
    
    func configure5(index: Int) {
        switch index {
        case 1: brandLabel.text = "코오롱 스포츠"
        case 2: brandLabel.text = "코오롱 스포츠"
        case 3: brandLabel.text = "코오롱 스포츠"
        case 5: brandLabel.text = "써네이"
        case 6: brandLabel.text = "페라가모"
        case 7: brandLabel.text = "노스 프로젝트"
        case 9: brandLabel.text = "아로"
        case 10: brandLabel.text = "메종 마르지엘라 퍼퓸"
        case 11: brandLabel.text = "메종 마르지엘라 퍼퓸"
        case 13: brandLabel.text = "아로"
        case 14: brandLabel.text = "메종 마르지엘라 퍼퓸"
        case 15: brandLabel.text = "메종 마르지엘라 퍼퓸"
        case 17: brandLabel.text = "노스페이스 키즈"
        case 18: brandLabel.text = "노스페이스 키즈"
        case 19: brandLabel.text = "네셔널지오그래픽"
        case 21: brandLabel.text = "플라스틱아크"
        case 22: brandLabel.text = "카네이테이"
        case 23: brandLabel.text = "플라스틱아크"
        default: break
        }
        
        switch index {
        case 1: priceLabel.text = "290,000원"
        case 2: priceLabel.text = "220,000원"
        case 3: priceLabel.text = "256,000원"
        case 5: priceLabel.text = "316,200원"
        case 6: priceLabel.text = "528,000원"
        case 7: priceLabel.text = "512,000원"
        case 9: priceLabel.text = "53,100원"
        case 10: priceLabel.text = "93,100원"
        case 11: priceLabel.text = "93,100원"
        case 13: priceLabel.text = "208,000원"
        case 14: priceLabel.text = "236,000원"
        case 15: priceLabel.text = "194,000원"
        case 17: priceLabel.text = "27,000원"
        case 18: priceLabel.text = "27,000원"
        case 19: priceLabel.text = "49,000원"
        case 21: priceLabel.text = "43,000원"
        case 22: priceLabel.text = "199,000원"
        case 23: priceLabel.text = "43,000원"
        default: break
        }
        
        switch index {
        case 1: saleLabel.text = "9%"
        case 2: saleLabel.text = "12%"
        case 3: saleLabel.text = "5%"
        case 5: saleLabel.text = "40%"
        case 6: saleLabel.text = "56%"
        case 7: saleLabel.text = "50%"
        case 9: saleLabel.text = "10%"
        case 10: saleLabel.text = "5%"
        case 11: saleLabel.text = "5%"
        case 13: saleLabel.text = "30%"
        case 14: saleLabel.text = "30%"
        case 15: saleLabel.text = "30%"
        case 17: saleLabel.text = "40%"
        case 18: saleLabel.text = "40%"
        default: break
        }
        
        switch index {
        case 1: imageView.image = UIImage(named: "HS10C2")
        case 2: imageView.image = UIImage(named: "HS10C3")
        case 3: imageView.image = UIImage(named: "HS10C4")
        case 5: imageView.image = UIImage(named: "HS10C6")
        case 6: imageView.image = UIImage(named: "HS10C7")
        case 7: imageView.image = UIImage(named: "HS10C8")
        case 9: imageView.image = UIImage(named: "HS10C10")
        case 10: imageView.image = UIImage(named: "HS10C11")
        case 11: imageView.image = UIImage(named: "HS10C12")
        case 13: imageView.image = UIImage(named: "HS10C18")
        case 14: imageView.image = UIImage(named: "HS10C19")
        case 15: imageView.image = UIImage(named: "HS10C20")
        case 17: imageView.image = UIImage(named: "HS10C14")
        case 18: imageView.image = UIImage(named: "HS10C15")
        case 19: imageView.image = UIImage(named: "HS10C16")
        case 21: imageView.image = UIImage(named: "HS10C22")
        case 22: imageView.image = UIImage(named: "HS10C23")
        case 23: imageView.image = UIImage(named: "HS10C24")
        default: break
        }
    }
}
