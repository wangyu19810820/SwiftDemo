//
//  ViewController.swift
//  UIAlertControllerTest
//
//  Created by wang yu on 2021/10/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func popAlert(_ sender: UIButton) {
        let alertController = UIAlertController(title: "我是警告弹出框", message: "这里填写内容", preferredStyle: UIAlertController.Style.alert)
        let alertAction1 = UIAlertAction(title: "确定", style: UIAlertAction.Style.default, handler: nil)
        alertController.addAction(alertAction1)
        let alertAction2 = UIAlertAction(title: "取消", style: UIAlertAction.Style.cancel, handler: nil)
        alertController.addAction(alertAction2)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func popAlert2(_ sender: UIButton) {
        let alertController = UIAlertController(title: "我是警告弹出框", message: "这里填写内容", preferredStyle: UIAlertController.Style.alert)
        let alertAction1 = UIAlertAction(title: "确定", style: UIAlertAction.Style.default, handler: nil)
        alertController.addAction(alertAction1)
        let alertAction2 = UIAlertAction(title: "删除", style: UIAlertAction.Style.destructive, handler: nil)
        alertController.addAction(alertAction2)
        let alertAction3 = UIAlertAction(title: "取消", style: UIAlertAction.Style.cancel, handler: nil)
        alertController.addAction(alertAction3)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func popAlert3(_ sender: UIButton) {
        let alertController = UIAlertController(title: "我是警告弹出框", message: "这里填写内容", preferredStyle: UIAlertController.Style.alert)
        let alertAction1 = UIAlertAction(title: "登录", style: UIAlertAction.Style.default) { (action) in
            print(alertController.textFields!.first!.text!.isEmpty ? "未输入文字" : alertController.textFields!.first!.text!)
            print(alertController.textFields![1].text!.isEmpty ? "未输入密码" : alertController.textFields![1].text!)
        }
        alertController.addAction(alertAction1)
        let alertAction2 = UIAlertAction(title: "取消", style: UIAlertAction.Style.cancel, handler: nil)
        alertController.addAction(alertAction2)
        
        alertController.addTextField() { (textField) in
            textField.placeholder = "请输入用户名"
        }
        
        alertController.addTextField() { (textField) in
            textField.placeholder = "请输入密码"
            textField.isSecureTextEntry = true
        }
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func popSheet(_ sender: UIButton) {
        let alertController = UIAlertController(title: "我是抽屉弹窗",
                                                message: "这里填写内容",
                                                preferredStyle: UIAlertController.Style.actionSheet)
        let alertAction1 = UIAlertAction(title: "确定", style: UIAlertAction.Style.default) { (action) in
            if let text = alertController.textFields?.first?.text, !text.isEmpty {
                print(text)
            } else {
                print("未输入文字")
            }
        }
        alertController.addAction(alertAction1)
        
        let alertAction2 = UIAlertAction(title: "取消", style: UIAlertAction.Style.cancel, handler: nil)
        alertController.addAction(alertAction2)
        
        self.present(alertController, animated: true, completion: nil)
    }
}

