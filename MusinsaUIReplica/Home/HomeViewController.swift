//
//  ViewController.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/11.
//

import UIKit

class HomeViewController: UIViewController {

    let categoryList = ["추천", "랭킹", "스타일", "세일", "이벤트"]
    
    lazy var homeTabBar = HomeTabBar(categoryList: categoryList)
    lazy var homeTabView = HomeTabView(categoryList: categoryList, homeTabBar: homeTabBar)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        navigationItem.title = "MUSINSA"
 
        let barketBarButton = UIBarButtonItem(image: UIImage(systemName: "bag"), style: .plain, target: self, action: #selector(BarButtonTapped))
        barketBarButton.tintColor = .black
        let searchBarButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(BarButtonTapped))
        searchBarButton.tintColor = .black
        navigationItem.rightBarButtonItems = [barketBarButton, searchBarButton]
        
        let bellBarButton = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: #selector(BarButtonTapped))
        bellBarButton.tintColor = .black
        navigationItem.leftBarButtonItems = [bellBarButton]
        
        [homeTabBar, homeTabView].forEach { view.addSubview($0) }
        
        homeTabBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(homeTabBar.cellHeight)
        }
        homeTabView.snp.makeConstraints { make in
            make.top.equalTo(homeTabBar.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    @objc func BarButtonTapped() {
    }
}
