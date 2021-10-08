//
//  ViewController.swift
//  UITabbarControllerTest
//
//  Created by wang yu on 2021/10/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItem.title = "首页"
        self.tabBarItem.image = UIImage(named: "imageNormal")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        self.tabBarItem.selectedImage = UIImage(named: "imageSelect")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
//        self.view.backgroundColor = UIColor.red
    }


}

