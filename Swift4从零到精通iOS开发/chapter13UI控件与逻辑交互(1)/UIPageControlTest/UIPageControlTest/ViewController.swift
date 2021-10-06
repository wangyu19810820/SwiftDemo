//
//  ViewController.swift
//  UIPageControlTest
//
//  Created by wang yu on 2021/10/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pageControl = UIPageControl(frame: CGRect(x: 20, y: 100, width: 280, height: 30))
        pageControl.numberOfPages = 10
        pageControl.backgroundColor = UIColor.red
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.blue
        pageControl.currentPage = 3
        pageControl.addTarget(self, action: #selector(change(pageControl:)), for: UIControl.Event.valueChanged)
        self.view.addSubview(pageControl)
    }

    @objc func change(pageControl: UIPageControl) {
        print("当前页码:\(pageControl.currentPage)")
    }
}

