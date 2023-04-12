//
//  HomeHeader.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/11.
//

import UIKit
import SnapKit

class HomeHeader: UICollectionReusableView {
    
    private let recommendButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("추천", for: .normal)
        bt.setTitleColor(.lightGray, for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return bt
    }()
    
    private let rankingButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("랭킹", for: .normal)
        bt.setTitleColor(.lightGray, for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return bt
    }()
    
    private let styleButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("스타일", for: .normal)
        bt.setTitleColor(.lightGray, for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return bt
    }()
    
    private let saleButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("세일", for: .normal)
        bt.setTitleColor(.lightGray, for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return bt
    }()
    
    private let beautyButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("뷰티", for: .normal)
        bt.setTitleColor(.lightGray, for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return bt
    }()
    
    private let eventButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("이벤트", for: .normal)
        bt.setTitleColor(.lightGray, for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        let buttonStackView = UIStackView(arrangedSubviews: [recommendButton, rankingButton, styleButton, saleButton, beautyButton, eventButton ])
        buttonStackView.distribution = .fillEqually
        addSubview(buttonStackView)
        buttonStackView.snp.makeConstraints { make in
            make.left.bottom.right.equalToSuperview()
            make.height.equalTo(50)
        }

        let bottomDivider = UIView()
        bottomDivider.backgroundColor = .lightGray
        addSubview(bottomDivider)
        bottomDivider.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(buttonStackView.snp.bottom)
            make.height.equalTo(0.5)
        }
    }
}
