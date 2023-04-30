//
//  CategorySideTabView.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/30.
//

import UIKit
import SnapKit



class CategorySideTabView: UIView {
        
    static let identifier = "CategorySideTabView"
    
    var categoryList = ["상의", "아우터", "바지", "원피스/스커트", "신발", "가방", "패션소품", "언더웨어", "뷰티", "스포츠/레저", "라이프", "키즈"]
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CategorySideTabView.identifier)
        tableView.backgroundColor = .systemBackground
        //tableView.isScrollEnabled = false
        tableView.bounces = false
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .none
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func setupLayout() {
        addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension CategorySideTabView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategorySideTabView.identifier, for: indexPath)
        cell.textLabel?.text = categoryList[indexPath.row]
        return cell
    }
}

extension CategorySideTabView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
