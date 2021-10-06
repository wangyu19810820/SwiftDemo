//
//  ViewController.swift
//  UITextFieldTest
//
//  Created by wang yu on 2021/10/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textField = UITextField(frame: CGRect(x: 20, y: 30, width: 200, height: 30))
        textField.borderStyle = UITextField.BorderStyle.line
        textField.textColor = UIColor.red
        textField.textAlignment = NSTextAlignment.center
        textField.placeholder = "请输入姓名"
        self.view.addSubview(textField)
        
//        let imageView1 = UIImageView(image: UIImage(named: "image"))
//        imageView1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
//        let imageView2 = UIImageView(image: UIImage(named: "image"))
//        imageView2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
//        textField.leftView = imageView1
//        textField.rightView = imageView2
//        textField.leftViewMode = UITextField.ViewMode.always
//        textField.rightViewMode = UITextField.ViewMode.always
        
        textField.delegate = self
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
    }
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        print(range)
        if string.isEmpty {
            return true
        }
        if (textField.text?.count)! >= 11 {
            return false
        }
        
        for c in string {
            if c < "0" || c > "9" {
                return false
            }
        }
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

