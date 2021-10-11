//
//  ViewController.swift
//  UIScrollViewTest
//
//  Created by wang yu on 2021/10/8.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView(frame: self.view.bounds)
        self.view.addSubview(scrollView)
        
        let subView1 = UIView(frame: self.view.frame)
        subView1.backgroundColor = UIColor.red
        scrollView.addSubview(subView1)
        
        let subView2 = UIView(frame: CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        subView2.backgroundColor = UIColor.blue
        scrollView.addSubview(subView2)
        
        scrollView.contentSize = CGSize(width: self.view.frame.width * 2, height: self.view.frame.height)
        scrollView.alwaysBounceVertical = true
        scrollView.alwaysBounceHorizontal = true
        // 是否显示竖直或水平方向的滚动条
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
    }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print(#function, scrollView.contentOffset)
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print(#function, scrollView.zoomScale)
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print(#function, scrollView.contentOffset)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print(#function, scrollView.contentOffset)
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print(#function, scrollView.contentOffset)
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print(#function, scrollView.contentOffset)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print(#function, scrollView.contentOffset)
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        print(#function, scrollView.contentOffset)
    }
    
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        print(#function, scrollView.contentOffset)
        return true
    }
    
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print(#function, scrollView.contentOffset)
    }
}
