//
//  ViewController.swift
//  UIScrollViewTest2
//
//  Created by wang yu on 2021/10/8.
//

import UIKit

class ViewController: UIViewController {

    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView(frame: self.view.bounds)
        scrollView.delegate = self
        scrollView.contentSize = self.view.frame.size
        self.view.addSubview(scrollView)
        
        imageView = UIImageView(image: UIImage(named: "image"))
        imageView.frame = self.view.frame
        scrollView.addSubview(imageView)
        
        scrollView.minimumZoomScale = 0.5
        scrollView.maximumZoomScale = 2
    }
}

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
//        print(#function, scrollView.zoomScale)
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        print(#function, scrollView.zoomScale)
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        print(#function, scrollView.zoomScale)
    }
}

