//
//  ViewController.swift
//  UIPickerViewTest
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pickView = UIPickerView(frame: CGRect(x: 0, y: 100, width: 320, height: 200))
        pickView.dataSource = self
        pickView.delegate = self
        self.view.addSubview(pickView)
    }
}

extension ViewController : UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "t第\(component + 1)组第\(row + 1)行"
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let attri = NSMutableAttributedString(string: "第\(component + 1)组第\(row + 1)行")
        attri.addAttributes([NSAttributedString.Key.foregroundColor:UIColor.red], range: NSRange(location: 0, length: attri.length))
        return attri
    }
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        let view = UIImageView(image: UIImage(named: "image"))
//        view.frame = CGRect(x: 0, y: 0, width: 110, height: 30)
//        return view
//    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("用户选择了第\(component)组第\(row)行")
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        if component == 0 {
            return 180
        } else {
            return 140
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
}
