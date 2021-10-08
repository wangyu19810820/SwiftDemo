//
//  ViewControllerFour.swift
//  UITabbarControllerTest
//
//  Created by wang yu on 2021/10/7.
//

import UIKit

class ViewControllerFour: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBarItem.title = "个人中心"
        self.tabBarItem.badgeColor = UIColor.red
        self.tabBarItem.badgeValue = "新消息"
//        self.view.backgroundColor = UIColor.orange
    }
    
}
