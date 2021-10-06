//
//  ViewController.swift
//  UIActivityIndicatorViewTest
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    var activity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red
        activity = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)
        activity.center = self.view.center
        activity.color = UIColor.green
        activity.startAnimating()
        activity.hidesWhenStopped = false
        self.view.addSubview(activity)
        
        let button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 20, y: 30, width: 50, height: 30)
        button.setTitle("切换", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(click), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
    }

    @objc private func click() {
        if activity.isAnimating {
            activity.stopAnimating()
        } else {
            activity.startAnimating()
        }
    }
}

