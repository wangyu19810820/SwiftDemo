//
//  ViewController.swift
//  PlistTest
//
//  Created by wang yu on 2021/10/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "MyPlist", ofType: "plist")
        let dic = NSDictionary(contentsOfFile: path!)
        print(dic ?? "dic为nil")
        
        let path2 = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory,
                                                        FileManager.SearchPathDomainMask.userDomainMask,
                                                        true).first
        let fileName2 = path2! + "/MyPlist.plist"
        let dic2: NSDictionary = ["name": "jaki", "age": "25"]
        dic2.write(toFile: fileName2, atomically: true)
        let dic3 = NSDictionary(contentsOfFile: fileName2)
        print(dic3 ?? "dic3为nil")
    }


}

