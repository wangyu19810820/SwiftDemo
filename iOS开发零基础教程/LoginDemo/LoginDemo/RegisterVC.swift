//
//  RegisterVC.swift
//  LoginDemo
//
//  Created by wang yu on 2021/10/2.
//

import UIKit

class RegisterVC: UIViewController {
    
    var flag = false
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if !flag {
            flag = true
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func loginButtonClick(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#function)
        guard segue.identifier == "success", let destination = segue.destination as? SuccessVC else {
            return
        }
        destination.text = "注册成功:\(usernameTextField.text!)"
        usernameTextField.text = ""
        passwordTextField.text = ""
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print(#function)
        guard identifier == "success" else {
            return true
        }
        
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
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
