//
//  TabBarController.swift
//  MusinsaUIReplica
//
//  Created by 심현석 on 2023/04/29.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
        setupImage()
        setupBackgroundColor()
        
        ///초기에 선택될 탭바 설정
        self.selectedIndex = 2
    }
    
    func setupController() {
        let VC1 = UINavigationController(rootViewController: CategoryViewController())
        VC1.title = "카테고리"
        VC1.view.backgroundColor = .yellow

        let VC2 = UINavigationController(rootViewController: SnapViewController())
        VC2.title = "스냅"
        VC2.view.backgroundColor = .red

        let VC3 = UINavigationController(rootViewController: HomeViewController())
        VC3.title = "홈"
        VC3.view.backgroundColor = .white

        let VC4 = UINavigationController(rootViewController: LikeViewController())
        VC4.title = "좋아요"
        VC4.view.backgroundColor = .orange

        let VC5 = UINavigationController(rootViewController: MyViewController())
        VC5.title = "마이"
        VC5.view.backgroundColor = .gray

        self.setViewControllers([VC1, VC2, VC3, VC4, VC5], animated: false)
    }
    
    func setupImage() {
        // 반드시 setController 해준 후 이미지 설정
        guard let items = self.tabBar.items else { return }
        items[0].image = UIImage(systemName: "magnifyingglass")
        items[1].image = UIImage(systemName: "number.square")
        items[2].image = UIImage(systemName: "house")
        items[3].image = UIImage(systemName: "heart")
        items[4].image = UIImage(systemName: "person")
    }
    
    func setupBackgroundColor() {
        self.tabBar.backgroundColor = .black
        self.tabBar.tintColor = .white
        self.tabBar.unselectedItemTintColor = .darkGray
    }
}
