//
//  CategoryiTemView.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/30.
//

import UIKit
import SnapKit

class CategoryiTemView: UIView {
        
    var categoryList = ["상의", "아우터", "바지", "신발", "원피스/스커트", "가방", "패션소품", "언더웨어", "뷰티", "스포츠/레저", "라이프", "키즈"]
    var itemList = [
        ["상의 신상", "카라 티셔츠", "긴소매 티셔츠", "니트/스웨터", "후드 티셔츠", "민소매 티셔츠"],
        ["아우터 신상", "후드 집업", "블루종", "래더 재킷", "무스탕/퍼", "트러거 재킷"],
        ["바지 신상", "데님 팬츠", "코튼 팬츠", "슬랙스", "조거 팬츠", "숏 팬츠"],
        ["신발 신상", "구두", "로퍼", "힐/펌프스", "플랫 슈즈", "블로퍼"],
        ["가방 신상", "백팩", "크로스 백", "숄더백", "토트백", "에코백"],
        ["", "", "", "", "", ""],
        ["", "", "", "", "", ""],
        ["", "", "", "", "", ""],
        ["", "", "", "", "", ""],
        ["", "", "", "", "", ""],
        ["", "", "", "", "", ""],
        ["", "", "", "", "", ""]
    ]
    
    let categorySideTabView: CategorySideTabView
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 80, height: 100)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 20
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 50, right: 20)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CategoryiTemViewCell.self, forCellWithReuseIdentifier: CategoryiTemViewCell.identifier)
        collectionView.register(CategoryiTemViewHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CategoryiTemViewHeader.identifier)
        
        collectionView.backgroundColor = .systemGray6
        collectionView.showsVerticalScrollIndicator = false
        
        return collectionView
    }()
    
    init(categorySideTabView: CategorySideTabView) {
        self.categorySideTabView = categorySideTabView
        super.init(frame: .zero)
        categorySideTabView.delegate = self
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
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryiTemViewCell.identifier, for: indexPath) as! CategoryiTemViewCell
        cell.label.text = itemList[indexPath.section][indexPath.row]
        cell.setupImage(section: indexPath.section, row: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CategoryiTemViewHeader.identifier, for: indexPath) as! CategoryiTemViewHeader
        header.label.attributedText = header.attributedText(firstText: categoryList[indexPath.section])
        return header
    }
}

extension CategoryiTemView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.frame.width, height: 50)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let indexPath = IndexPath(row: Int(targetContentOffset.pointee.y / collectionView.contentSize.height * CGFloat(itemList.count + 2)), section: 0)
        categorySideTabView.collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .centeredVertically)
    }
}

extension CategoryiTemView: SideTabViewCellDelegate {
    func didSelectCell(scrollTo section: Int) {
        collectionView.scrollToItem(at: IndexPath(row: 0, section: section), at: .centeredVertically, animated: true)
    }
}
