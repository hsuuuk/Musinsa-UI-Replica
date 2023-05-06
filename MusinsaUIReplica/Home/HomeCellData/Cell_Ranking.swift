//
//  Cell_Ranking.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/29.
//

import UIKit

class Layout4: UICollectionViewFlowLayout {
    override init() {
        super.init()
        minimumLineSpacing = 10
        minimumInteritemSpacing = 10
        scrollDirection = .horizontal
        sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class DataSource4: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell_Ranking", for: indexPath)
        cell.backgroundColor = .systemBlue
        return cell
    }
}

class Delegate4: NSObject, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 200)
    }
}
