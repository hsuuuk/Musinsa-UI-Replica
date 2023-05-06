//
//  Cell_Sale.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/29.
//

import UIKit

class Layout2: UICollectionViewCompositionalLayout {
    init() {
        super.init { sectionNumber, environment in
            switch sectionNumber {
            case 0:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(300), heightDimension: .absolute(50))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = .init(top: 0, leading: 5, bottom: 0, trailing: 0)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets = .init(top: 30, leading: 10, bottom: 0, trailing: 0)
                
                return section
                
            case 1:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 15, bottom: 0, trailing: 15)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(320))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                section.contentInsets = .init(top: 20, leading: 0, bottom: 10, trailing: 0)
                
                return section
                
            case 2:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(130), heightDimension: .absolute(200))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 0, leading: 15, bottom: 40, trailing: 0)
                
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(60))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .topTrailing)
                section.boundarySupplementaryItems = [header]
                
                return section
                
            default:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 0, bottom: 20, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute((UIScreen.main.bounds.width - 20) / 3), heightDimension: .absolute(200))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 2)
                group.contentInsets = .init(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 0, leading: 10, bottom: 200, trailing: 10)
                
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(60))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .topTrailing)
                
                let footerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(65))
                let footer = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerSize, elementKind: UICollectionView.elementKindSectionFooter, alignment: .bottom)
                
                section.boundarySupplementaryItems = [header, footer]
                
                return section
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class DataSource2: NSObject, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0: return 2
        case 1: return 5
        case 2: return 7
        default: return 6
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaleCell1", for: indexPath) as! SaleCell1
            cell.setupImage1(index: indexPath.row)
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaleCell1", for: indexPath) as! SaleCell1
            cell.setupImage2(index: indexPath.row)
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaleCellItem", for: indexPath) as! SaleCellItem
            cell.setupImage1(index: indexPath.row)
            //cell.backgroundColor = .systemOrange
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaleCellItem", for: indexPath) as! SaleCellItem
            cell.setupImage2(index: indexPath.row)
            //cell.backgroundColor = .systemOrange
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UITableViewCell", for: indexPath)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch (kind, indexPath.section) {
        case (UICollectionView.elementKindSectionHeader, 2):
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SaleCellItemHeaer", for: indexPath) as! SaleCellItemHeaer
            header.setupText(text: "Time Sale")
            return header
        case (UICollectionView.elementKindSectionHeader, 3):
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SaleCellItemHeaer", for: indexPath) as! SaleCellItemHeaer
            header.setupText(text: "클리어런스")
            return header
        case (UICollectionView.elementKindSectionFooter, 3):
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "RecommendCell3Footer", for: indexPath) as! RecommendCell3Footer
            return footer
        default:
            return UICollectionReusableView()
        }
    }
}

class Delegate2: NSObject, UICollectionViewDelegateFlowLayout {
    
}
