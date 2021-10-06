//
//  ViewController.swift
//  UIViewControllerTest2
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    var label: UILabel!
    var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label = UILabel(frame: CGRect(x: 20, y: 100, width: 280, height: 30))
        self.view.addSubview(label)
        
        detailLabel = UILabel(frame: CGRect(x: 20, y: 150, width: 280, height: 30))
        self.view.addSubview(detailLabel)
    }

    @IBAction func touch(_ sender: UIButton) {
        let viewController = ViewControllerTwo(detail: "Hello World!")
        viewController.data = "这是从第一个界面传递进来的数据"
        viewController.delegate = self
        viewController.closure = { (detail: String) in
            self.detailLabel.text = detail
        }
        viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
}

extension ViewController : ViewControllerTwoProtocol {
    func sendData(data: String) {
        self.label.text = data
    }
}
