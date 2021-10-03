//
//  LoginVC.swift
//  LoginDemo
//
//  Created by wang yu on 2021/10/2.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#function)
        if segue.identifier == "success", let destination = segue.destination as? SuccessVC {
            destination.text = "登录成功:\(usernameTextField.text!)"
            usernameTextField.text = ""
            passwordTextField.text = ""
        }
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print(#function)
        if identifier == "success" {
            let username = usernameTextField.text ?? ""
            if username.isEmpty {
                errorLabel.text = "请输入用户名"
                return false
            }
            if username.count < 6 {
                errorLabel.text = "用户名不少于6个字符"
                return false
            }
            let password = passwordTextField.text ?? ""
            if password.isEmpty {
                errorLabel.text = "请输入密码"
                return false
            }
            if password.count < 6 {
                errorLabel.text = "密码不少于6个字符"
                return false
            }
            errorLabel.text = ""
        }
        return true
    }
}

