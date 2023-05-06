//
//  ViewController.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/11.
//

import UIKit

class HomeViewController: UIViewController {

    let categoryList = ["추천", "세일", "스타일", "랭킹", "뷰티", "이벤트", "여름", "황금연휴"]
    
    lazy var homeTabBar = HomeTabBar(categoryList: categoryList)
    lazy var homeTabView = HomeTabView(categoryList: categoryList, homeTabBar: homeTabBar)
    
    let borderLine: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        return view
    }()
    
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
        
        setupLayout()
    }
    
    func setupLayout() {
        [homeTabBar, borderLine, homeTabView].forEach { view.addSubview($0) }
        
        homeTabBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(homeTabBar.cellHeight)
        }
        borderLine.snp.makeConstraints { make in
            make.top.equalTo(homeTabBar.snp.bottom)
            make.left.right.equalToSuperview()
            make.height.equalTo(0.5)
        }
        homeTabView.snp.makeConstraints { make in
            make.top.equalTo(borderLine.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    @objc func BarButtonTapped() {
    }
}
