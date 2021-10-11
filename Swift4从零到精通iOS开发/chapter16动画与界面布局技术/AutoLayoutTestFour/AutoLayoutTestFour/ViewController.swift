//
//  ViewController.swift
//  AutoLayoutTestFour
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
        
        let stringH = "H:|-60-[view]-60-|"
        let stringV = "V:|-60-[view(200)]"
        let constraintArrayH = NSLayoutConstraint.constraints(withVisualFormat: stringH,
                                                              options: NSLayoutConstraint.FormatOptions(),
                                                              metrics: nil,
                                                              views: ["view": view])
        let constraintArrayV = NSLayoutConstraint.constraints(withVisualFormat: stringV,
                                                              options: NSLayoutConstraint.FormatOptions(),
                                                              metrics: nil,
                                                              views: ["view": view])
        self.view.addConstraints(constraintArrayH)
        self.view.addConstraints(constraintArrayV)
    }


}

