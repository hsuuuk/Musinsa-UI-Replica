//
//  CategoryViewController.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/11.
//

import UIKit
import SnapKit

class CategoryViewController: UIViewController {
    
    let categoryTopTabView = CategoryTopTabView()
    let categorySideTabView = CategorySideTabView()
    lazy var categoryiTemView = CategoryiTemView(categorySideTabView: categorySideTabView)
    
    let searchController: UISearchController = {
        let search = UISearchController()
        search.searchBar.placeholder = "첫무신사라면? 배라파인트가 100원!"
        search.automaticallyShowsCancelButton = true
        search.searchBar.autocapitalizationType = .none
        search.searchBar.setValue("취소", forKey: "cancelButtonText")
        search.searchBar.tintColor = .black
        return search
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        navigationItem.titleView = searchController.searchBar
        // searchController 실행시 navigationbar가 사라지는 에러 해결
        searchController.hidesNavigationBarDuringPresentation = false
        
        let basketBarButton = UIBarButtonItem(image: UIImage(systemName: "bag"), style: .plain, target: self, action: #selector(BarButtonTapped))
        basketBarButton.tintColor = .black
        navigationItem.rightBarButtonItem = basketBarButton
        
        setupLayout()
    }
    
    func setupLayout() {
        [categoryTopTabView, categorySideTabView, categoryiTemView].forEach { view.addSubview($0) }
        
        categoryTopTabView.snp.makeConstraints({ make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.left.right.equalToSuperview()
            make.height.equalTo(80)
        })
        
        categorySideTabView.snp.makeConstraints { make in
            make.left.bottom.equalToSuperview()
            make.top.equalTo(categoryTopTabView.snp.bottom)
            make.width.equalTo(100)
        }
        
        categoryiTemView.snp.makeConstraints { make in
            make.right.bottom.equalToSuperview()
            make.top.equalTo(categoryTopTabView.snp.bottom)
            make.left.equalTo(categorySideTabView.snp.right)
        }
    }
    
    @objc func BarButtonTapped() {
    }
}




