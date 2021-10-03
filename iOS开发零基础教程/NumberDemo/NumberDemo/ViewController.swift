//
//  ViewController.swift
//  NumberDemo
//
//  Created by wang yu on 2021/10/2.
//

import UIKit

class ViewController: UIViewController {

    var intNumber: Int = 0
    var doubleNumber: Double = 0
    var step: Bool = true
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func clickButton(_ sender: UIButton) {
        intNumber += step ? 1 : -1
        doubleNumber += Double(step ? 1 : -1)
        if intNumber >= 10 || intNumber <= 0 {
            step = !step
        }
        
        updateUI()
    }
    
    func updateUI() {
        label.text = "Int: \(intNumber)\n Double: \(doubleNumber)"
        button.setTitle("\(step ? "+1" : "-1")", for: .normal)
    }
}

