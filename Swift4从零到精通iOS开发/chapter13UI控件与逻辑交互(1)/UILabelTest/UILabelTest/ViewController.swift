//
//  ViewController.swift
//  UILabelTest
//
//  Created by wang yu on 2021/10/4.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 200, height: 30))
        label.text = "我是一个普通的便签控件"
        self.view.addSubview(label)
        
        let label2 = UILabel(frame: CGRect(x: 20, y: 60, width: 200, height: 30))
        label2.text = "我是一个自定义的便签控件"
        label2.font = UIFont.boldSystemFont(ofSize: 20)
        label2.textColor = UIColor.red
        // 设置阴影颜色
        label2.shadowColor = UIColor.green
        // 设置阴影的位置偏移
        label2.shadowOffset = CGSize(width: 2, height: 2)
        label2.textAlignment = NSTextAlignment.center
        self.view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRect(x: 20, y: 110, width: 200, height: 150))
        label3.text = "我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本"
        label3.numberOfLines = 7
        self.view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRect(x: 20, y: 290, width: 200, height: 30))
        let attri = NSMutableAttributedString(string: "我是个性化文本")
        attri.addAttributes([NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor:UIColor.red],
                            range: NSRange(location: 0, length: 2))
        attri.addAttributes([NSAttributedString.Key.font:UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor:UIColor.blue],
                            range: NSRange(location: 3, length: 3))
        label4.attributedText = attri
        self.view.addSubview(label4)
    }


}

