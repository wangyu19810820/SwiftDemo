//
//  ViewController.swift
//  UIStepperTest
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stepper = UIStepper(frame: CGRect(x: 100, y: 100, width: 0, height: 0))
        stepper.tintColor = UIColor.red
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.stepValue = 1
        stepper.value = 5
        stepper.addTarget(self, action: #selector(click(stepper:)), for: UIControl.Event.valueChanged)
        // 按住不放时，值会发生改变
        stepper.autorepeat = true
        // 用户松手时，才触发valueChanged事件
        stepper.isContinuous = false
        // 是否循环
        stepper.wraps = true
        self.view.addSubview(stepper)
    }

    @objc private func click(stepper: UIStepper) {
        print("步进控制器的值是：\(stepper.value)")
    }
}

