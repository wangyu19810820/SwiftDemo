//
//  SecondViewController.swift
//  Segues
//
//  Created by wang yu on 2021/10/27.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var textPassedOver: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = textPassedOver
    }

}
