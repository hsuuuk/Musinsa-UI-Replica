//
//  Layout.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/12.
//

import UIKit

extension Layout {
    static func CompositionalLayout2() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
            switch sectionNumber {
            default:
                let topItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(430))
                let topItem = NSCollectionLayoutItem(layoutSize: topItemSize)
                topItem.contentInsets = .init(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                //
                let bottomItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/3), heightDimension: .fractionalHeight(1))
                let bottomItem = NSCollectionLayoutItem(layoutSize: bottomItemSize)
                bottomItem.contentInsets = .init(top: 0, leading: 2.5, bottom: 0, trailing: 2.5)
                
                let bottomGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200))
                let bottomGroup = NSCollectionLayoutGroup.horizontal(layoutSize: bottomGroupSize, repeatingSubitem: bottomItem, count: 3)
                bottomGroup.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                //
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.85), heightDimension: .estimated(0))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [topItem, bottomGroup])
                group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 20)
                
                //
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 20, leading: 20, bottom: 50, trailing: 0)
                
                return section
            }
        }
    }
}


