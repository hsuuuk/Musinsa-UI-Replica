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
    
    func setupImage(section: Int, row: Int) {
        switch section {
        case 0:
            switch row {
            case 0: imageView.image = UIImage(named: "CategoryiTemView1")
            case 1: imageView.image = UIImage(named: "CategoryiTemView2")
            case 2: imageView.image = UIImage(named: "CategoryiTemView3")
            case 3: imageView.image = UIImage(named: "CategoryiTemView4")
            case 4: imageView.image = UIImage(named: "CategoryiTemView5")
            default: imageView.image = UIImage(named: "CategoryiTemView6")
            }
            
        case 1:
            switch row {
            case 0: imageView.image = UIImage(named: "CategoryiTemView7")
            case 1: imageView.image = UIImage(named: "CategoryiTemView8")
            case 2: imageView.image = UIImage(named: "CategoryiTemView9")
            case 3: imageView.image = UIImage(named: "CategoryiTemView10")
            case 4: imageView.image = UIImage(named: "CategoryiTemView11")
            default: imageView.image = UIImage(named: "CategoryiTemView12")
            }
            
        case 2:
            switch row {
            case 0: imageView.image = UIImage(named: "CategoryiTemView13")
            case 1: imageView.image = UIImage(named: "CategoryiTemView14")
            case 2: imageView.image = UIImage(named: "CategoryiTemView15")
            case 3: imageView.image = UIImage(named: "CategoryiTemView16")
            case 4: imageView.image = UIImage(named: "CategoryiTemView17")
            default: imageView.image = UIImage(named: "CategoryiTemView18")
            }
            
        default:
            switch row {
            case 0: imageView.image = UIImage(named: "CategoryiTemView1")
            case 1: imageView.image = UIImage(named: "CategoryiTemView2")
            case 2: imageView.image = UIImage(named: "CategoryiTemView3")
            case 3: imageView.image = UIImage(named: "CategoryiTemView4")
            case 4: imageView.image = UIImage(named: "CategoryiTemView5")
            default: imageView.image = UIImage(named: "CategoryiTemView6")
            }
        }
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
