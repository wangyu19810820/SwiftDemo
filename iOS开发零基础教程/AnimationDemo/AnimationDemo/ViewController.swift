//
//  ViewController.swift
//  AnimationDemo
//
//  Created by wang yu on 2021/10/3.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frameLabel = createLabel(y: 100, text: "Frame")
        
    }

    private func createLabel(y: CGFloat, text: String) -> UILabel {
        let label = UILabel(frame: CGRect(x: 0, y: y, width: 100, height: 100))
        label.backgroundColor = .systemGray3
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .center
        label.text = text
        view.addSubview(label)
        return label
    }
}

