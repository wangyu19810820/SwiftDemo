//
//  ViewController.swift
//  DrawDemo
//
//  Created by wang yu on 2021/10/3.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var drawView: DrawView!
    @IBOutlet weak var verticalSlider: VerticalSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapView))
        drawView.addGestureRecognizer(tap)
        
        verticalSlider.delegate = self
    }

    @IBAction func horizontalSliderChanged(_ sender: UISlider) {
        drawView.horizontalScale = CGFloat(sender.value)
    }
    
    @objc func tapView() {
        drawView.plus.toggle()
    }
    
}

extension ViewController: VerticalSliderDelegate {
    func verticalSliderDidChange(_ slider: VerticalSlider) {
        drawView.verticalScale = slider.value
    }
}
