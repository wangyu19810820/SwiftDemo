//
//  ViewController.swift
//  UIProgressViewTest
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    var progress: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        progress = UIProgressView(progressViewStyle: UIProgressView.Style.default)
        progress.frame = CGRect(x: 20, y: 100, width: 280, height: 10)
        progress.progress = 0.5
        progress.progressTintColor = UIColor.green
        progress.trackTintColor = UIColor.red
        self.view.addSubview(progress)
        
        progress.progressImage = UIImage(named: "imageH")
        progress.trackImage = UIImage(named: "imageN")
        
        let btn1 = UIButton(type: UIButton.ButtonType.system)
        btn1.frame = CGRect(x: 20, y: 150, width: 60, height: 30)
        btn1.setTitle("增加", for: UIControl.State.normal)
        btn1.addTarget(self, action: #selector(increase), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn1)
        
        let btn2 = UIButton(type: UIButton.ButtonType.system)
        btn2.frame = CGRect(x: 100, y: 150, width: 60, height: 30)
        btn2.setTitle("减少", for: UIControl.State.normal)
        btn2.addTarget(self, action: #selector(decrease), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn2)
    }

    @objc private func increase() {
        progress.progress += 0.1
    }
    
    @objc private func decrease() {
        progress.progress -= 0.1
    }
}

