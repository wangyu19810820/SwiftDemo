//
//  ViewController.swift
//  UserDefaultsTest
//
//  Created by wang yu on 2021/10/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let userDefaults = UserDefaults.standard
//        userDefaults.set(URL(string: "http://www.baidu.com"), forKey: "urlKey")
//        userDefaults.set("stringValue", forKey: "stringKey")
//        userDefaults.set(true, forKey: "boolKey")
//        userDefaults.set(Double(0.1), forKey: "doubleKey")
//        userDefaults.set(Float(1.5), forKey: "floatKey")
//        userDefaults.set(5, forKey: "intKey")
//        userDefaults.set(["1":"一"], forKey: "dicKey")
//        userDefaults.set([1,2,3,4], forKey: "arrKey")
//        userDefaults.set(Data(), forKey: "dataKey")
//        userDefaults.synchronize()
        
        let userDefaults2 = UserDefaults.standard
        print(userDefaults2.url(forKey: "urlKey")!)
        print(userDefaults2.string(forKey: "stringKey")!)
        print(userDefaults2.bool(forKey: "boolKey"))
        print(userDefaults2.double(forKey: "doubleKey"))
        print(userDefaults2.float(forKey: "floatKey"))
        print(userDefaults2.integer(forKey: "intKey"))
        print(userDefaults2.dictionary(forKey: "dicKey")!)
        print(userDefaults2.array(forKey: "arrKey")!)
        print(userDefaults2.data(forKey: "dataKey") as Any)
        
        userDefaults2.removeObject(forKey: "dataKey")
    }


}

