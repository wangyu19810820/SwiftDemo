//
//  ViewController.swift
//  UIViewAnimation
//
//  Created by wang yu on 2021/10/9.
//

import UIKit

class ViewController: UIViewController {

    var animationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        animationView.backgroundColor = UIColor.red
        self.view.addSubview(animationView)
        
        let btn1 = UIButton(type: UIButton.ButtonType.system)
        btn1.frame = CGRect(x: 20, y: 400, width: 40, height: 30)
        btn1.setTitle("btn1", for: UIControl.State.normal)
        btn1.addTarget(self, action: #selector(click1), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn1)
        
        let btn2 = UIButton(type: UIButton.ButtonType.system)
        btn2.frame = CGRect(x: 70, y: 400, width: 40, height: 30)
        btn2.setTitle("btn2", for: UIControl.State.normal)
        btn2.addTarget(self, action: #selector(click2), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn2)
        
        let btn3 = UIButton(type: UIButton.ButtonType.system)
        btn3.frame = CGRect(x: 120, y: 400, width: 40, height: 30)
        btn3.setTitle("btn3", for: UIControl.State.normal)
        btn3.addTarget(self, action: #selector(click3), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn3)
        
        let btn4 = UIButton(type: UIButton.ButtonType.system)
        btn4.frame = CGRect(x: 170, y: 400, width: 40, height: 30)
        btn4.setTitle("btn4", for: UIControl.State.normal)
        btn4.addTarget(self, action: #selector(click4), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn4)
    }

    @objc private func click1() {
        UIView.animate(withDuration: 1, animations: {
            self.animationView.backgroundColor = UIColor.blue
        })
    }
    
    @objc private func click2() {
        UIView.animate(withDuration: 1, animations: {
            self.animationView.backgroundColor = UIColor.blue
        }, completion: { (finish) in
            UIView.animate(withDuration: 2, animations: {
                self.animationView.center = CGPoint(x: 150, y: 300)
            })
        })
    }
    
    @objc private func click3() {
        UIView.animate(withDuration: 1,
                       delay: 2,
                       options: [UIView.AnimationOptions.repeat],
                       animations: {
            self.animationView.backgroundColor = UIColor.blue
        },
                       completion: nil)
    }
    
    @objc private func click4() {
        UIView.animate(withDuration: 2,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 0.5,
                       options: [],
                       animations: {
            self.animationView.center = CGPoint(x: 150, y: 350)
        },
                       completion: nil)
    }
}

