//
//  PagingCollectionViewCell.swift
//  PagingTabBar
//
//  Created by 심현석 on 2023/04/27.
//

import UIKit
import SnapKit

class HomeTabViewCell: UICollectionViewCell {
    
    static let identifier = "PagingViewCell"
    
    var cellData: CellData? {
        didSet {
            guard let cellData = cellData else { return }
            collectionView.dataSource = cellData.dataSource
            collectionView.delegate = cellData.delegate
            collectionView.collectionViewLayout = cellData.layout
        }
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell_Recommend")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell_Ranking")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell_Style")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell_Sale")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell_Event")
        
        collectionView.showsVerticalScrollIndicator = false
        
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

