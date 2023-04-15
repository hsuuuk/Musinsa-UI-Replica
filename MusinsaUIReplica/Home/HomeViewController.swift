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
    
    var selectedIndexPath = IndexPath(row: 0, section: 8)
    
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
        collectionView.register(recommendFirstCell.self, forCellWithReuseIdentifier: "recommendFirstCell")
        collectionView.register(recommendSecondCell.self, forCellWithReuseIdentifier: "recommendSecondCell")
        collectionView.register(recommendCell3.self, forCellWithReuseIdentifier: "recommendCell3")
        collectionView.register(recommendCell3Header.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "recommendCell3Header")
        collectionView.register(recommendCell3Footer.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "recommendCell3Footer")
        collectionView.register(recommendCell4.self, forCellWithReuseIdentifier: "recommendCell4")
        collectionView.register(recommendCell4Header.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "recommendCell4Header")
        collectionView.register(recommendCell4Footer.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "recommendCell4Footer")
        collectionView.register(ScrollCell1.self, forCellWithReuseIdentifier: "ScrollCell1")
        collectionView.register(ScrollCell2.self, forCellWithReuseIdentifier: "ScrollCell2")
        collectionView.register(ScrollHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ScrollHeader")
        
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

// MARK: - Delegate

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 8 {
            collectionView.scrollToItem(at: IndexPath(row: indexPath.row, section: 8), at: .centeredHorizontally, animated: true)
            collectionView.scrollToItem(at: IndexPath(row: indexPath.row * 4, section: 9), at: .centeredHorizontally, animated: true)
            
            let previousCell = collectionView.cellForItem(at: selectedIndexPath) as? ScrollCell1
            previousCell?.resetLabel()
            
            let cell = collectionView.cellForItem(at: indexPath) as! ScrollCell1
            cell.changeLabel()
            
            selectedIndexPath = indexPath
        }
    }
}

// MARK: - DataSource

extension HomeViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return collectionView == topCollectionView ? 1 : 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == topCollectionView {
            return 7
        } else {
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
            switch indexPath.section {
            case 0:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendFirstCell", for: indexPath) as! recommendFirstCell
                cell.configure(index: indexPath.row)
                return cell
            case 1:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendSecondCell", for: indexPath) as! recommendSecondCell
                cell.configure1(index: indexPath.row)
                return cell
            case 2:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendSecondCell", for: indexPath) as! recommendSecondCell
                cell.configure2(index: indexPath.row)
                return cell
            case 3:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendCell3", for: indexPath) as! recommendCell3
                cell.configure1(index: indexPath.row)
                return cell
            case 4:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendCell3", for: indexPath) as! recommendCell3
                cell.configure2(index: indexPath.row)
                return cell
            case 5:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendCell4", for: indexPath) as! recommendCell4
                cell.configure(index: indexPath.row)
                return cell
            case 6:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendCell3", for: indexPath) as! recommendCell3
                cell.configure3(index: indexPath.row)
                return cell
            case 7:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendCell3", for: indexPath) as! recommendCell3
                cell.configure4(index: indexPath.row)
                return cell
            case 8:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ScrollCell1", for: indexPath) as! ScrollCell1
                cell.configure(index: indexPath.row)
                return cell
            case 9:
                if indexPath.row % 4 == 0 {
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ScrollCell2", for: indexPath) as! ScrollCell2
                    cell.configure(index: indexPath.row)
                    return cell
                } else {
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendCell3", for: indexPath) as! recommendCell3
                    cell.configure5(index: indexPath.row)
                    return cell
                }
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UITableViewCell", for: indexPath)
                return cell
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if collectionView == collectionView, kind == UICollectionView.elementKindSectionHeader, indexPath.section == 3 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "recommendCell3Header", for: indexPath) as! recommendCell3Header
            return header
        } else if collectionView == collectionView, kind == UICollectionView.elementKindSectionFooter, indexPath.section == 4 {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "recommendCell3Footer", for: indexPath) as! recommendCell3Footer
            return footer
        } else if collectionView == collectionView, kind == UICollectionView.elementKindSectionHeader, indexPath.section == 5 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "recommendCell4Header", for: indexPath) as! recommendCell4Header
            return header
        } else if collectionView == collectionView, kind == UICollectionView.elementKindSectionFooter, indexPath.section == 7 {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "recommendCell4Footer", for: indexPath) as! recommendCell4Footer
            return footer
        } else if collectionView == collectionView, kind == UICollectionView.elementKindSectionHeader, indexPath.section == 8 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "ScrollHeader", for: indexPath) as! ScrollHeader
            return header
        } else {
            return UICollectionReusableView()
        }
    }
}

// MARK: - FlowLayout

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
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
