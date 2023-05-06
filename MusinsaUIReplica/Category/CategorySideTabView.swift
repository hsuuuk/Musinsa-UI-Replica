//
//  CategorySideTabView.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/30.
//

import UIKit
import SnapKit

protocol SideTabViewCellDelegate: AnyObject {
    func didSelectCell(scrollTo section: Int)
}

class CategorySideTabView: UIView {
        
    static let identifier = "CategorySideTabView"
    
    var categoryList = ["상의", "아우터", "바지", "원피스/스커트", "신발", "가방", "패션소품", "언더웨어", "뷰티", "스포츠/레저", "라이프", "키즈"]
    
    weak var delegate: SideTabViewCellDelegate?
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        //layout.itemSize = CGSize(width: collectionView.frame.width, height: 200)
        layout.minimumLineSpacing = 0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CategorySideTabViewCell.self, forCellWithReuseIdentifier: CategorySideTabViewCell.identifier)
        collectionView.backgroundColor = .systemBackground
    
        collectionView.selectItem(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: [])
        
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func setupLayout() {
        addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension CategorySideTabView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategorySideTabViewCell.identifier, for: indexPath) as! CategorySideTabViewCell
        cell.label.attributedText = cell.attributedText(secondText: categoryList[indexPath.row])
        
        if indexPath.item == 0 {
            cell.label.font = UIFont.systemFont(ofSize: 14, weight: .black)
            cell.label.textColor = .black
        }
        
        return cell
    }
}

extension CategorySideTabView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 45)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didSelectCell(scrollTo: indexPath.item)
    }
}
