//
//  ViewController.swift
//  界面间传值
//
//  Created by wang yu on 2021/10/8.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(sendData(_:)),
                                               name: Notification.Name("sendData"),
                                               object: nil)
    }

    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    @IBAction func propertyClick(_ sender: UIButton) {
        let vc = ViewControllerTwo()
        vc.data = textField.text
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func singleClic(_ sender: UIButton) {
        Singleton.instance.data = textField.text
        
        let vc = ViewControllerThree()
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func userdefaultsClick(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(textField.text, forKey: "data")
        
        let vc = ViewControllerFour()
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func protocolClick(_ sender: UIButton) {
        let vc = ViewControllerFive()
        vc.delegate = self
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func closureClick(_ sender: UIButton) {
        let vc = ViewControllerSix()
        vc.closure = { (data) in
            self.textField.text = data
        }
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func notificationClick(_ sender: UIButton) {
        let vc = ViewControllerSeven()
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc private func sendData(_ notification: NSNotification) {
        if let dict = notification.userInfo {
            if let data = dict["data"] as? String {
                textField.text = data
            }
        }
    }
        
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}

extension ViewController: SendDataDelegate {
    func sendData(data: String?) {
        textField.text = data
    }
}
