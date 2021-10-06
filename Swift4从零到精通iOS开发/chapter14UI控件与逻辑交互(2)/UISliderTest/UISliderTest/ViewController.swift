//
//  ViewController.swift
//  UISliderTest
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let slider = UISlider(frame: CGRect(x: 20, y: 100, width: 280, height: 30))
        slider.maximumValue = 10
        slider.minimumValue = 0
        slider.value = 5
        slider.minimumTrackTintColor = UIColor.red
        slider.maximumTrackTintColor = UIColor.green
        slider.thumbTintColor = UIColor.blue
        slider.setThumbImage(UIImage(named: "image"), for: UIControl.State.normal)
        slider.setThumbImage(UIImage(named: "image"), for: UIControl.State.highlighted)
        slider.setMinimumTrackImage(UIImage(named: "imageS"), for: UIControl.State.normal)
        slider.setMaximumTrackImage(UIImage(named: "imageS"), for: UIControl.State.normal)
        slider.addTarget(self, action: #selector(change(slider:)), for: UIControl.Event.valueChanged)
        // 拖拽结束后再触发事件
        slider.isContinuous = false
        self.view.addSubview(slider)
    }

    @objc private func change(slider: UISlider) {
        print("\(slider.value)")
    }
}

