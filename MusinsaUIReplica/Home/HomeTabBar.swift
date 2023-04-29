//
//  PagingTabBar.swift
//  PagingTabBar
//
//  Created by 심현석 on 2023/04/27.
//

import UIKit
import SnapKit

protocol HomeTabBarCellDelegate: AnyObject {
    func didTapHomeTabBarCell(scrollTo indexPath: IndexPath)
}

class HomeTabBar: UIView {
        
    var categoryList: [String]
    var cellHeight: CGFloat = 44.0
    weak var delegate: HomeTabBarCellDelegate?
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal // scrollDirection의 기본값은 .vertical
        layout.minimumLineSpacing = 0
        
        let inset: CGFloat = 16.0
        layout.sectionInset = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        
        let width = (UIScreen.main.bounds.width - inset * 2) / 5
        layout.itemSize = CGSize(width: width, height: cellHeight)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomeTabBarCell.self, forCellWithReuseIdentifier: HomeTabBarCell.identifier)
        
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.selectItem(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: []) // 처음에 첫 탭에 포커싱
        
        return collectionView
    }()
    
    init(categoryList: [String]) {
        self.categoryList = categoryList
        super.init(frame: .zero)
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

extension HomeTabBar: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeTabBarCell.identifier, for: indexPath) as! HomeTabBarCell
        cell.setupView(title: categoryList[indexPath.row])
        return cell
    }
}


extension HomeTabBar: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didTapHomeTabBarCell(scrollTo: indexPath)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}
