//
//  CategoryiTemView.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/30.
//

import UIKit
import SnapKit

class CategoryiTemView: UIView {
        
    var itemList = ["상의", "아우터", "바지", "원피스/스커트", "신발", "가방", "패션소품", "언더웨어", "뷰티", "스포츠/레저", "라이프", "키즈"]
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 50, height: 80)
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CategoryTopTabViewCell.self, forCellWithReuseIdentifier: CategoryTopTabViewCell.identifier)
        
        collectionView.backgroundColor = .systemGray5
        collectionView.showsHorizontalScrollIndicator = false
        //collectionView.showsVerticalScrollIndicator = false
        
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

extension CategoryiTemView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryTopTabViewCell.identifier, for: indexPath) as! CategoryTopTabViewCell
        cell.label.text = itemList[indexPath.row]
        return cell
    }
}

extension CategoryiTemView: UICollectionViewDelegateFlowLayout {
    
}
