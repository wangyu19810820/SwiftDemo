//
//  ViewController.swift
//  SQLiteLibTest
//
//  Created by wang yu on 2021/10/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let result1 = ObjectiveC_Hander.runNormalSql("create table Student(name text PRIMARY KEY, age integer default 15)")
        let result2 = ObjectiveC_Hander.runNormalSql("insert into Student(name, age) values(\"tom\", 30)")
        print("result1:\(result1), result2:\(result2)")
        
        let array = ObjectiveC_Hander.selectSql("select name, age from Student") as! Array<Dictionary<String, Any>>
        for element in array {
            print("name:\(element["name"]!), age:\(element["age"]!)")
        }
        
        // 获取虚拟机沙盒目录
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        print(path.first)
    }


}

