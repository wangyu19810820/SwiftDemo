//
//  ViewController.swift
//  CAAnimationTest
//
//  Created by wang yu on 2021/10/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn1 = UIButton(type: UIButton.ButtonType.system)
        btn1.frame = CGRect(x: 20, y: 100, width: 40, height: 30)
        btn1.setTitle("btn1", for: UIControl.State.normal)
        btn1.addTarget(self, action: #selector(click1), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn1)
        
        let btn2 = UIButton(type: UIButton.ButtonType.system)
        btn2.frame = CGRect(x: 80, y: 100, width: 40, height: 30)
        btn2.setTitle("btn2", for: UIControl.State.normal)
        btn2.addTarget(self, action: #selector(click2), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn2)
        
        let btn3 = UIButton(type: UIButton.ButtonType.system)
        btn3.frame = CGRect(x: 140, y: 100, width: 40, height: 30)
        btn3.setTitle("btn3", for: UIControl.State.normal)
        btn3.addTarget(self, action: #selector(click3), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn3)
        
        let btn4 = UIButton(type: UIButton.ButtonType.system)
        btn4.frame = CGRect(x: 200, y: 100, width: 40, height: 30)
        btn4.setTitle("btn4", for: UIControl.State.normal)
        btn4.addTarget(self, action: #selector(click4), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn4)
        
        let btn5 = UIButton(type: UIButton.ButtonType.system)
        btn5.frame = CGRect(x: 260, y: 100, width: 40, height: 30)
        btn5.setTitle("btn5", for: UIControl.State.normal)
        btn5.addTarget(self, action: #selector(click5), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn5)
    }

    @objc private func click1() {
        let basicAni = CABasicAnimation(keyPath: "transform.rotation.z")
        basicAni.fromValue = NSNumber(value: 0)
        basicAni.toValue = NSNumber(value: Double.pi)
        basicAni.duration = 2
        self.view.layer.add(basicAni, forKey: nil)
    }
    
    @objc private func click2() {
        let keyframeAni = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        keyframeAni.values = [NSNumber(value: 0),
                              NSNumber(value: Double.pi / 4),
                              NSNumber(value: 0),
                              NSNumber(value: Double.pi)]
        keyframeAni.duration = 3
        self.view.layer.add(keyframeAni, forKey: "")
    }
    
    @objc private func click3() {
        let springAni = CASpringAnimation(keyPath: "position.y")
        springAni.mass = 2
        springAni.stiffness = 5
        springAni.damping = 2
        springAni.toValue = 400
        springAni.duration = 3
        let layer = CALayer()
        layer.position = CGPoint(x: 100, y: 200)
        layer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        layer.backgroundColor = UIColor.red.cgColor
        self.view.layer.addSublayer(layer)
        layer.add(springAni, forKey: "")
    }
    
    @objc private func click4() {
        let transAni = CATransition()
        transAni.type = CATransitionType.push
        transAni.subtype = CATransitionSubtype.fromTop
        let layer = CALayer()
        layer.position = CGPoint(x: 200, y: 200)
        layer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        layer.backgroundColor = UIColor.red.cgColor
        layer.add(transAni, forKey: "")
        self.view.layer.addSublayer(layer)
    }
    
    @objc private func click5() {
        let basicAni = CABasicAnimation(keyPath: "backgroundColor")
        basicAni.toValue = UIColor.green.cgColor
        let basicAni2 = CABasicAnimation(keyPath: "transform.scale.x")
        basicAni2.toValue = NSNumber(value: 2)
        
        let groupAni = CAAnimationGroup()
        groupAni.animations = [basicAni, basicAni2]
        groupAni.duration = 3
        let layer = CALayer()
        layer.position = CGPoint(x: 100, y: 300)
        layer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        layer.backgroundColor = UIColor.red.cgColor
        layer.add(groupAni, forKey: "")
        self.view.layer.addSublayer(layer)
    }
}

