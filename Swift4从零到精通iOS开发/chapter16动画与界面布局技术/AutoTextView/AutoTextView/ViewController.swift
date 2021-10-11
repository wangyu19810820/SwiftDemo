//
//  ViewController.swift
//  AutoTextView
//
//  Created by wang yu on 2021/10/10.
//

import UIKit

class ViewController: UIViewController {

    var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView = UITextView()
        
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.delegate = self
        self.view.addSubview(textView)
        
        textView.snp.makeConstraints{ (make) in
            make.leading.equalTo(100)
            make.trailing.equalTo(-100)
            make.top.equalTo(150)
            make.height.equalTo(30)
        }
    }
}

extension ViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView.bounds.size.height >= 100 {
            if textView.contentSize.height < textView.bounds.size.height {
                textView.snp.updateConstraints{ (make) in
                    make.height.equalTo(textView.contentSize.height)
                }
            }
        }
        if textView.contentSize.height != textView.bounds.size.height && textView.bounds.size.height < 100 {
            textView.snp.updateConstraints{ (make) in
                make.height.equalTo(textView.contentSize.height)
            }
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
        return true
    }
}
