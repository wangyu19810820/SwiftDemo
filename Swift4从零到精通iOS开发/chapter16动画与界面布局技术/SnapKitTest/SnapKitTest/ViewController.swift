//
//  ViewController.swift
//  SnapKitTest
//
//  Created by wang yu on 2021/10/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = UIColor.red
        self.view.addSubview(view)
//        view.snp.makeConstraints { (make) in
//            make.left.equalTo(20)
//            make.right.equalTo(-20)
//            make.top.equalTo(20)
//            make.bottom.equalTo(-20)
//        }
        
        view.snp.makeConstraints { (make) in
            make.left.top.equalTo(20)
            make.right.bottom.equalTo(-20)
        }
        
//        view.snp.updateConstraints { (make) in
//        }
//
//        view.snp.removeConstraints()
    }


}

