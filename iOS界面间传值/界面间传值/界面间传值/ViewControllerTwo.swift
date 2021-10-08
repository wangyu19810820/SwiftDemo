//
//  ViewControllerTwo.swift
//  界面间传值
//
//  Created by wang yu on 2021/10/8.
//

import UIKit

class ViewControllerTwo: UIViewController {

    var data: String?
    var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white

        textField = UITextField(frame: CGRect(x: 20, y: 100, width: self.view.frame.width - 40, height: 30))
        textField.borderStyle = UITextField.BorderStyle.line
        textField.text = data
        self.view.addSubview(textField)
        
        let button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 20, y: 150, width: self.view.frame.width - 40, height: 30)
        button.setTitle("返回", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(click), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
    }

    @objc private func click() {
        self.dismiss(animated: true, completion: nil)
    }
}
