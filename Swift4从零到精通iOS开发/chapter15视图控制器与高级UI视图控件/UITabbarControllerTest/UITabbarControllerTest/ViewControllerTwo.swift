//
//  ViewControllerTwo.swift
//  UITabbarControllerTest
//
//  Created by wang yu on 2021/10/7.
//

import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.tabBarItem.title = "推荐"
        let item = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.favorites, tag: 1)
        self.tabBarItem = item
//        self.view.backgroundColor = UIColor.green
    }

}
