//
//  ViewControllerTwo.swift
//  UIViewControllerTest2
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

protocol ViewControllerTwoProtocol {
    func sendData(data: String)
}

class ViewControllerTwo: UIViewController {

    var data: String?
    var detail: String!
    var delegate: ViewControllerTwoProtocol?
    var closure: ((String) -> Void)?
    
    init(detail: String) {
        self.detail = detail
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.red
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        button.setTitle("返回", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(ret(sender:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
        
        let label = UILabel(frame: CGRect(x: 20, y: 200, width: 280, height: 30))
        label.text = data
        self.view.addSubview(label)
        
        let detailLabel = UILabel(frame: CGRect(x: 20, y: 250, width: 280, height: 30))
        detailLabel.text = detail
        self.view.addSubview(detailLabel)
    }
    
    @objc private func ret(sender: UIButton) {
        delegate?.sendData(data: "第二个界面传递的值")
        if let closure = closure {
            closure("Hello World!")
        }
        self.dismiss(animated: true, completion: nil)
    }

}
