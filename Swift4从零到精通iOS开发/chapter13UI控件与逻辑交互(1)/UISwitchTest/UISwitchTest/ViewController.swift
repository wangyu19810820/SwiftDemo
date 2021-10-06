//
//  ViewController.swift
//  UISwitchTest
//
//  Created by wang yu on 2021/10/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swi = UISwitch()
        swi.center = CGPoint(x: 100, y: 100)
        swi.onTintColor = UIColor.yellow
        swi.tintColor = UIColor.red
        swi.thumbTintColor = UIColor.purple
        swi.isOn = true
        swi.addTarget(self, action: #selector(change(swi:)), for: UIControl.Event.valueChanged)
        self.view.addSubview(swi)
    }

    @objc func change(swi: UISwitch) {
        print("开关状态\(swi.isOn)")
    }
}

