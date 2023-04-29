//
//  Cell_Recommend.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/29.
//

import UIKit

class RecommendIndexPathManager {
    
    static let shared = RecommendIndexPathManager()
    
    var selectedIndexPath: IndexPath = IndexPath(row: 0, section: 8)
}

class Layout1: UICollectionViewCompositionalLayout {
    init() {
        super.init { sectionNumber, environment in
            switch sectionNumber {
            case 0:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(1))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                return section
                
            case 1:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(60+13), heightDimension: .absolute(80))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
                group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 25, leading: 18, bottom: 0, trailing: 0)
                
                return section
                
            case 2:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(60+13), heightDimension: .absolute(80))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
                group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 25, leading: 18, bottom: 30, trailing: 0)
                
                return section
                
            case 3:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.31), heightDimension: .absolute(200))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
                group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 0, leading: 10+5, bottom: 0, trailing: 10)
                
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(60))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .topTrailing)
                section.boundarySupplementaryItems = [header]
                
                return section
                
            case 4:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.31), heightDimension: .absolute(200))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
                group.contentInsets = .init(top: 0, leading: 5, bottom: 0, trailing: 0)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 15, leading: 10, bottom: 0, trailing: 10)
                
                let footerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(65))
                let footer = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerSize, elementKind: UICollectionView.elementKindSectionFooter, alignment: .bottom)
                section.boundarySupplementaryItems = [footer]
                
                return section
                
            case 5:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(80), heightDimension: .estimated(100))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets = .init(top: 30, leading: 15, bottom: 0, trailing: 0)
                
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(60))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .topTrailing)
                header.contentInsets = .init(top: 0, leading: 0, bottom: -60, trailing: 0)
                section.boundarySupplementaryItems = [header]
                
                return section
                
            case 6:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.31), heightDimension: .absolute(200))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
                group.contentInsets = .init(top: 0, leading: 5, bottom: 0, trailing: 0)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 15, leading: 10, bottom: 0, trailing: 10)
                
                return section
                
            case 7:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.31), heightDimension: .absolute(200))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
                group.contentInsets = .init(top: 0, leading: 5, bottom: 0, trailing: 0)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = .init(top: 15, leading: 10, bottom: 0, trailing: 10)
                
                let footerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(65))
                let footer = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: footerSize, elementKind: UICollectionView.elementKindSectionFooter, alignment: .bottom)
                section.boundarySupplementaryItems = [footer]
                
                return section
                
                // MARK: - case 8
                
            case 8:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.2), heightDimension: .absolute(40))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 10)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets = .init(top: 0, leading: 15, bottom: 0, trailing: 0)
                
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(85))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
                header.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                section.boundarySupplementaryItems = [header]
                
                return section
                
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
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.85), heightDimension: .estimated(1))
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
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class DataSource1: NSObject, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0: return 5
        case 1: return 5
        case 2: return 5
        case 3: return 3
        case 4: return 3
        case 5: return 8
        case 6: return 3
        case 7: return 3
        case 8 : return 6
        case 9: return 24
        default: return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell1", for: indexPath) as! RecommendCell1
            cell.configure(index: indexPath.row)
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell2", for: indexPath) as! RecommendCell2
            cell.configure1(index: indexPath.row)
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell2", for: indexPath) as! RecommendCell2
            cell.configure2(index: indexPath.row)
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell3", for: indexPath) as! RecommendCell3
            cell.configure1(index: indexPath.row)
            return cell
        case 4:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell3", for: indexPath) as! RecommendCell3
            cell.configure2(index: indexPath.row)
            return cell
        case 5:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell4", for: indexPath) as! RecommendCell4
            cell.configure(index: indexPath.row)
            
            // 재사용성 떄문에 Cell Class말고 여기에 셀 상태 설정
            if indexPath.row == 0 {
                cell.imageView.layer.borderColor = UIColor.black.cgColor
                cell.imageView.layer.borderWidth = 1
            } else {
                cell.imageView.layer.borderColor = UIColor.lightGray.cgColor
                cell.imageView.layer.borderWidth = 0.5
            }
            
            return cell
        case 6:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell3", for: indexPath) as! RecommendCell3
            cell.configure3(index: indexPath.row)
            return cell
        case 7:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell3", for: indexPath) as! RecommendCell3
            cell.configure4(index: indexPath.row)
            return cell
        case 8:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell5_1", for: indexPath) as! RecommendCell5_1
            cell.configure(index: indexPath.row)
                        
            // 셀의 재사용성 때문에 스크롤하면서 셀이 화면 밖으로 사라지면 그 셀이 다른 인덱스 경로의 셀로 재사용되어 선택된 셀뿐만 아니라 다른 셀의 색상도 변경되는 에러 발생. 여기서도 셀의 상태를 설정해줘서 에러 해결
            if RecommendIndexPathManager.shared.selectedIndexPath == indexPath {
                cell.changeLabel()
            } else {
                cell.resetLabel()
            }
            
            return cell
        case 9:
            if indexPath.row % 4 == 0 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell5_2", for: indexPath) as! RecommendCell5_2
                cell.configure(index: indexPath.row)
                return cell
            } else {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCell3", for: indexPath) as! RecommendCell3
                cell.configure5(index: indexPath.row)
                return cell
            }
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UITableViewCell", for: indexPath)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch (kind, indexPath.section) {
        case (UICollectionView.elementKindSectionHeader, 3):
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "RecommendCell3Header", for: indexPath) as! RecommendCell3Header
            return header
        case (UICollectionView.elementKindSectionFooter, 4):
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "RecommendCell3Footer", for: indexPath) as! RecommendCell3Footer
            return footer
        case (UICollectionView.elementKindSectionHeader, 5):
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "RecommendCell4Header", for: indexPath) as! RecommendCell4Header
            return header
        case (UICollectionView.elementKindSectionFooter, 7):
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "RecommendCell4Footer", for: indexPath) as! RecommendCell4Footer
            return footer
        case (UICollectionView.elementKindSectionHeader, 8):
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "RecommendCell5Header", for: indexPath) as! RecommendCell5Header
            return header
        default:
            return UICollectionReusableView()
        }
    }
}

class Delegate1: NSObject, UICollectionViewDelegateFlowLayout {
        
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 8 {
            collectionView.scrollToItem(at: IndexPath(row: indexPath.row, section: 8), at: .centeredHorizontally, animated: true)
            collectionView.scrollToItem(at: IndexPath(row: indexPath.row * 4, section: 9), at: .centeredHorizontally, animated: true)

            let previousCell = collectionView.cellForItem(at: RecommendIndexPathManager.shared.selectedIndexPath) as? RecommendCell5_1
            previousCell?.resetLabel()

            let cell = collectionView.cellForItem(at: indexPath) as! RecommendCell5_1
            cell.changeLabel()

            RecommendIndexPathManager.shared.selectedIndexPath = indexPath
        }
    }
}
