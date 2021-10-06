//
//  ViewController.swift
//  UINavigationControllerTest
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "第二个视图控制器"
        
        let item = UIBarButtonItem(title: "Pop",
                                   style: UIBarButtonItem.Style.plain,
                                   target: self,
                                   action: #selector(pop))
        self.navigationItem.rightBarButtonItem = item
    }

    @objc private func pop() {
        self.navigationController?.popViewController(animated: true)
    }
}

