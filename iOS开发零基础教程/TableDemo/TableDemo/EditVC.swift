//
//  EditVC.swift
//  TableDemo
//
//  Created by wang yu on 2021/10/3.
//

import UIKit

protocol EditVCDelegate: AnyObject {
    func editVC(_ vc:EditVC, didSave text: String, index: Int?)
}

class EditVC: UIViewController {

    weak var delegate: EditVCDelegate?
    
    var index: Int?
    var text: String = ""
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(clickSaveButton))
        textView.text = text
    }
    
    @objc func clickSaveButton() {
        let text = textView.text.trimmingCharacters(in: .whitespacesAndNewlines)
        if text.isEmpty {
            let alert = UIAlertController(title: "Empty Text", message: "Please enter text", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            delegate?.editVC(self, didSave: text, index: index)
            navigationController?.popViewController(animated: true)
        }
    }
}
