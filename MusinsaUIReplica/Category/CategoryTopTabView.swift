//
//  CategoryTopTabView.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/30.
//

import UIKit
import SnapKit

class CategoryTopTabView: UIView {
    
    var categoryList = ["럭셔리", "키즈", "뷰티", "아울렛", "어스", "스포츠", "골프"]
    var cellHeight: CGFloat = 44.0
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal // scrollDirection의 기본값은 .vertical
        layout.itemSize = CGSize(width: 50, height: cellHeight)
        layout.minimumInteritemSpacing = 20
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.register(CategoryTopTabViewCell.self, forCellWithReuseIdentifier: CategoryTopTabViewCell.identifier)
        
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        
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

extension CategoryTopTabView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryTopTabViewCell.identifier, for: indexPath) as! CategoryTopTabViewCell
        cell.label.text = categoryList[indexPath.row]
        return cell
    }
}
