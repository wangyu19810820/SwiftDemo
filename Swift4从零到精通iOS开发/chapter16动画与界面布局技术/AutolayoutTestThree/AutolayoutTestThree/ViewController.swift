//
//  ViewController.swift
//  AutolayoutTestThree
//
//  Created by wang yu on 2021/10/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        self.view.addSubview(view)
        
        let layoutConstraint1 = NSLayoutConstraint(item: view,
                                                   attribute: NSLayoutConstraint.Attribute.centerX,
                                                   relatedBy: NSLayoutConstraint.Relation.equal,
                                                   toItem: self.view,
                                                   attribute: NSLayoutConstraint.Attribute.centerX,
                                                   multiplier: 1,
                                                   constant: 0)
        let layoutConstraint2 = NSLayoutConstraint(item: view,
                                                   attribute: NSLayoutConstraint.Attribute.centerY,
                                                   relatedBy: NSLayoutConstraint.Relation.equal,
                                                   toItem: self.view,
                                                   attribute: NSLayoutConstraint.Attribute.centerY,
                                                   multiplier: 1,
                                                   constant: 0)
        let layoutConstraint3 = NSLayoutConstraint(item: view,
                                                   attribute: NSLayoutConstraint.Attribute.width,
                                                   relatedBy: NSLayoutConstraint.Relation.equal,
                                                   toItem: nil,
                                                   attribute: NSLayoutConstraint.Attribute.notAnAttribute,
                                                   multiplier: 1,
                                                   constant: 200)
        let layoutConstraint4 = NSLayoutConstraint(item: view,
                                                   attribute: NSLayoutConstraint.Attribute.height,
                                                   relatedBy: NSLayoutConstraint.Relation.equal,
                                                   toItem: nil,
                                                   attribute: NSLayoutConstraint.Attribute.notAnAttribute,
                                                   multiplier: 1,
                                                   constant: 200)
        self.view.addConstraints([layoutConstraint1, layoutConstraint2, layoutConstraint3, layoutConstraint4])
    }


}

