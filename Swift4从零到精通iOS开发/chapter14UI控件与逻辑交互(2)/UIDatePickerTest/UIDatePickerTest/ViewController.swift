//
//  ViewController.swift
//  UIDatePickerTest
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 100, width: 280, height: 200))
        datePicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        datePicker.locale = Locale(identifier: "zh")
        datePicker.timeZone = TimeZone(identifier: "Asia/Shanghai")
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateAsString = "2021-10-06 14:25:37"
        datePicker.date = dateFormatter.date(from: dateAsString)!

        datePicker.minimumDate = dateFormatter.date(from: "2021-10-05 14:25:37")
        datePicker.maximumDate = dateFormatter.date(from: "2021-10-07 14:25:37")
        
        datePicker.addTarget(self,
                             action: #selector(sele(datePicker:)),
                             for: UIControl.Event.valueChanged)
        self.view.addSubview(datePicker)
    }

    @objc private func sele(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let date = datePicker.date
        let time = datePicker.countDownDuration
        print("date:\(dateFormatter.string(from: date)), time:\(time)")
    }

}

