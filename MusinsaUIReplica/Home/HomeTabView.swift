//
//  PagingView.swift
//  PagingTabBar
//
//  Created by 심현석 on 2023/04/27.
//

import UIKit
import SnapKit

class HomeTabView: UIView {
    
    let categoryList: [String]
    let pagingTabBar: HomeTabBar
    
    let PagingViewCellDataArray: [CellData] = [
        CellData(layout: Layout11.CompositionalLayout(), dataSource: DataSource1(), delegate: Delegate1()),
        CellData(layout: Layout2(), dataSource: DataSource2(), delegate: Delegate2()),
        CellData(layout: Layout3(), dataSource: DataSource3(), delegate: Delegate3()),
        CellData(layout: Layout4(), dataSource: DataSource4(), delegate: Delegate4()),
        CellData(layout: Layout5(), dataSource: DataSource5(), delegate: Delegate5())
    ]
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomeTabViewCell.self, forCellWithReuseIdentifier: HomeTabViewCell.identifier)
        
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isPagingEnabled = true
        
        return collectionView
    }()
    
    init(categoryList: [String], pagingTabBar: HomeTabBar) {
        self.categoryList = categoryList
        self.pagingTabBar = pagingTabBar
        super.init(frame: .zero)
        setupLayout()
        pagingTabBar.delegate = self
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

extension HomeTabView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeTabViewCell.identifier, for: indexPath) as! HomeTabViewCell
        cell.cellData = PagingViewCellDataArray[indexPath.row]
        return cell
    }
}

extension HomeTabView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frame = collectionView.frame
        return CGSize(width: frame.width, height: frame.height)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let indexPath = IndexPath(row: Int(targetContentOffset.pointee.x / UIScreen.main.bounds.width), section: 0)
        pagingTabBar.collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .centeredHorizontally)
    }
}

extension HomeTabView: HomeTabBarCellDelegate {
    func didTapHomeTabBarCell(scrollTo indexPath: IndexPath) {
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: false)
    }
}
