//
//  ViewController.swift
//  UISegmentedControlTest
//
//  Created by wang yu on 2021/10/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let segmentedControl = UISegmentedControl(items: ["1","按钮","按钮按钮","按钮按钮按钮",])
//        let segmentedControl = UISegmentedControl(items: [
//            UIImage(named: "qq")!,
//            UIImage(named: "qq")!,
//            UIImage(named: "qq")!,
//            UIImage(named: "qq")!,])
        segmentedControl.frame = CGRect(x: 10, y: 30, width: 250, height: 30)
        segmentedControl.tintColor = UIColor.blue
//        segmentedControl.selectedSegmentIndex = 1
//        segmentedControl.isMomentary = true
        segmentedControl.addTarget(self, action: #selector(sele(seg:)), for: UIControl.Event.valueChanged)
        self.view.addSubview(segmentedControl)
        
//        segmentedControl.setWidth(8, forSegmentAt: 0)
//        segmentedControl.setWidth(32, forSegmentAt: 1)
//        segmentedControl.setWidth(85, forSegmentAt: 3)
        segmentedControl.apportionsSegmentWidthsByContent = true
    }

    @objc func sele(seg:UISegmentedControl) {
        print("选择了\(seg.selectedSegmentIndex)")
        if seg.selectedSegmentIndex == 0 {
            seg.insertSegment(withTitle: "按钮5", at: 0, animated: true)
        } else if seg.selectedSegmentIndex == 1 {
            seg.removeSegment(at: 0, animated: true)
        } else if seg.selectedSegmentIndex == 2 {
            seg.removeAllSegments()
        } else if seg.selectedSegmentIndex == 3 {
            seg.setTitle("new", forSegmentAt: 0)
        }
    }
}

