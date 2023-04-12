//
//  ViewController.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/11.
//

import UIKit

class HomeViewController: UIViewController {
    
    var topCollectionView: UICollectionView!
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        navigationItem.title = "MUSINSA"
        
        // MARK: - topCollectionView
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumInteritemSpacing = 20
        topCollectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        topCollectionView.showsHorizontalScrollIndicator = false
        
        view.addSubview(topCollectionView)
        topCollectionView.snp.makeConstraints { make in
            make.top.left.right.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(50)
        }
        
        topCollectionView.dataSource = self
        topCollectionView.delegate = self
        topCollectionView.register(TopCell.self, forCellWithReuseIdentifier: "TopCell")
//        topCollectionView.register(TopHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TopHeader")
        
        // MARK: - collectionView
        
        let layout = Layout.CompositionalLayout()
        layout.register(SectionBackgroundDecorationView.self, forDecorationViewOfKind: "background")
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(topCollectionView.snp.bottom)
            make.left.right.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "UITableViewCell")
        collectionView.register(recommendFirstCell.self, forCellWithReuseIdentifier: "firstCell")
        collectionView.register(recommendSecondCell.self, forCellWithReuseIdentifier: "secondCell")
//        collectionView.register(HomeHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HomeHeader")
        
        collectionView.backgroundColor = .lightGray
        
        let barketBarButton = UIBarButtonItem(image: UIImage(systemName: "bag"), style: .plain, target: self, action: #selector(BarButtonTapped))
        barketBarButton.tintColor = .black
        let searchBarButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(BarButtonTapped))
        searchBarButton.tintColor = .black
        navigationItem.rightBarButtonItems = [barketBarButton, searchBarButton]
        
        let bellBarButton = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: #selector(BarButtonTapped))
        bellBarButton.tintColor = .black
        navigationItem.leftBarButtonItems = [bellBarButton]
    }
    
    @objc func BarButtonTapped() {
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return collectionView == topCollectionView ? 1 : 5
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == topCollectionView {
            return 7
        } else {
            switch section {
            case 0: return 5
            case 1: return 5
            default: return 10
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == topCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopCell", for: indexPath) as! TopCell
            switch indexPath.row {
            case 0:
                cell.button.setTitle("럭셔리 세일", for: .normal)
                cell.button.setTitleColor(.systemPink, for: .normal)
            case 1:
                cell.button.setTitle("추천", for: .normal)
                cell.button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
                cell.button.setTitleColor(.black, for: .normal)
                
                let borderBottom = CALayer()
                let borderWidth = CGFloat(2)
                borderBottom.borderColor = UIColor.black.cgColor
                borderBottom.borderWidth = borderWidth
                borderBottom.frame = CGRect(x: 0, y: cell.button.frame.size.height - borderWidth, width: cell.button.frame.size.width, height: borderWidth)
                cell.button.layer.addSublayer(borderBottom)
            case 2: cell.button.setTitle("랭킹", for: .normal)
            case 3: cell.button.setTitle("스타일", for: .normal)
            case 4: cell.button.setTitle("세일", for: .normal)
            case 5: cell.button.setTitle("뷰티", for: .normal)
            default:
                cell.button.setTitle("이벤트", for: .normal)
            }
            return cell
        } else {
            if indexPath.section == 0 {
                let FistCell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCell", for: indexPath) as! recommendFirstCell
                switch indexPath.row {
                case 0: FistCell.imageView.image = UIImage(named: "HomeCV1Cell1")
                case 1: FistCell.imageView.image = UIImage(named: "HomeCV1Cell2")
                case 2: FistCell.imageView.image = UIImage(named: "HomeCV1Cell3")
                case 3: FistCell.imageView.image = UIImage(named: "HomeCV1Cell4")
                case 4: FistCell.imageView.image = UIImage(named: "HomeCV1Cell5")
                default: break
                }
                return FistCell
            } else if indexPath.section == 1 {
                let SecondCell = collectionView.dequeueReusableCell(withReuseIdentifier: "secondCell", for: indexPath) as! recommendSecondCell
                return SecondCell
            } else {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UITableViewCell", for: indexPath)
                cell.backgroundColor = .orange
                return cell
            }
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UITableViewCell", for: indexPath)
//            cell.backgroundColor = .orange
//            return cell
        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        if collectionView == topCollectionView {
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TopHeader", for: indexPath) as! TopHeader
//            return header
//        } else {
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HomeHeader", for: indexPath) as! HomeHeader
//            header.backgroundColor = .blue
//            return header
//        }
//    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: view.frame.width, height: 50)
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == topCollectionView {
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        } else {
            return .zero
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == topCollectionView {
            let cell = TopCell()
            switch indexPath.row {
            case 0: cell.button.setTitle("럭셔리 세일", for: .normal)
            case 1: cell.button.setTitle("추천", for: .normal)
            case 2: cell.button.setTitle("랭킹", for: .normal)
            case 3: cell.button.setTitle("스타일", for: .normal)
            case 4: cell.button.setTitle("세일", for: .normal)
            case 5: cell.button.setTitle("뷰티", for: .normal)
            default:
                cell.button.setTitle("이벤트", for: .normal)
            }
            let size = cell.sizeThatFits(CGSize(width: CGFloat.infinity, height: CGFloat.infinity))
            return size
        } else {
            return .zero
        }
    }
}
