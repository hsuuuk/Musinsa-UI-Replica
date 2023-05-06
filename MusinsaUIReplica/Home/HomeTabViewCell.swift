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
        
        collectionView.register(RecommendCell1.self, forCellWithReuseIdentifier: "RecommendCell1")
        collectionView.register(RecommendCell2.self, forCellWithReuseIdentifier: "RecommendCell2")
        collectionView.register(RecommendCell3.self, forCellWithReuseIdentifier: "RecommendCell3")
        collectionView.register(RecommendCell3Header.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "RecommendCell3Header")
        collectionView.register(RecommendCell3Footer.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "RecommendCell3Footer")
        collectionView.register(RecommendCell4.self, forCellWithReuseIdentifier: "RecommendCell4")
        collectionView.register(RecommendCell4Header.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "RecommendCell4Header")
        collectionView.register(RecommendCell4Footer.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "RecommendCell4Footer")
        collectionView.register(RecommendCell5_1.self, forCellWithReuseIdentifier: "RecommendCell5_1")
        collectionView.register(RecommendCell5_2.self, forCellWithReuseIdentifier: "RecommendCell5_2")
        collectionView.register(RecommendCell5Header.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "RecommendCell5Header")
        
        collectionView.register(RecommendCell1.self, forCellWithReuseIdentifier: "RecommendCell1")
        collectionView.register(RecommendCell2.self, forCellWithReuseIdentifier: "RecommendCell2")
        collectionView.register(SaleCellItem.self, forCellWithReuseIdentifier: "SaleCellItem")
        collectionView.register(RecommendCell3Header.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "RecommendCell3Header")
        collectionView.register(RecommendCell4.self, forCellWithReuseIdentifier: "RecommendCell4")
        collectionView.register(RecommendCell4Header.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "RecommendCell4Header")
        collectionView.register(RecommendCell4Footer.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "RecommendCell4Footer")
        
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

