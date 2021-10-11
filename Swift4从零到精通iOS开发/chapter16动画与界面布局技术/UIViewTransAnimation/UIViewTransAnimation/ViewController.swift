//
//  ViewController.swift
//  UIViewTransAnimation
//
//  Created by wang yu on 2021/10/9.
//

import UIKit

class ViewController: UIViewController {

    var animationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView = UIView(frame: CGRect(x: 20, y: 100, width: 280, height: 300))
        animationView.backgroundColor = UIColor.red
        self.view.addSubview(animationView)
        
        let btn1 = UIButton(type: UIButton.ButtonType.system)
        btn1.frame = CGRect(x: 20, y: 500, width: 40, height: 30)
        btn1.setTitle("btn1", for: UIControl.State.normal)
        btn1.addTarget(self, action: #selector(click1), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn1)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.transition(with: animationView,
                          duration: 3,
                          options: UIView.AnimationOptions.transitionCurlUp,
                          animations: {},
                          completion: nil)
    }
    
    @objc private func click1() {
        let otherView = UIView(frame: CGRect(x: 20, y: 100, width: 280, height: 300))
        otherView.backgroundColor = UIColor.blue
        UIView.transition(from: animationView,
                          to: otherView,
                          duration: 3,
                          options: UIView.AnimationOptions.transitionFlipFromRight,
                          completion: nil)
    }
}

