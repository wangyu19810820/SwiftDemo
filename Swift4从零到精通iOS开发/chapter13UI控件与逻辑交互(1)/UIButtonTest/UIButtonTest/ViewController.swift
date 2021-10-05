//
//  ViewController.swift
//  UIButtonTest
//
//  Created by wang yu on 2021/10/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonOne = UIButton(type: UIButton.ButtonType.custom)
        buttonOne.frame = CGRect(x: 20, y: 40, width: 100, height: 80)
        buttonOne.backgroundColor = UIColor.purple
        buttonOne.setTitle("标题", for: UIControl.State.normal)
        buttonOne.setTitleColor(UIColor.white, for: UIControl.State.normal)
        self.view.addSubview(buttonOne)
        buttonOne.addTarget(self, action: #selector(touchBegin), for: UIControl.Event.touchUpInside)
//        buttonOne.setImage(UIImage(named: "qq"), for: UIControl.State.normal)
        buttonOne.setBackgroundImage(UIImage(named: "qq"), for: UIControl.State.normal)
    }

    @objc func touchBegin() {
        print("用户点击了按钮")
    }
}

