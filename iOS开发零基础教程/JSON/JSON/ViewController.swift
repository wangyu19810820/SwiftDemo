//
//  ViewController.swift
//  JSON
//
//  Created by wang yu on 2021/10/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = Bundle.main.url(forResource: "NewsList", withExtension: "json") else {
            fatalError("No url")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("No data")
        }
//        jsonToDic(data)
        jsonToModel(data)
    }

    func jsonToDic(_ data: Data) {
        guard let dic = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
            fatalError("No dic")
        }
        print("JSON dic:\n", dic)
        print()
        
        let page = dic["page"] as! Int
        print("page:", page)
        
        let next = dic["next"] as! Bool
        print("next:", next)
        
        let list = dic["list"] as! [[String: Any]]
        print("list:", list)
        
        for newsDic in list {
            let title = newsDic["title"] as! String
            print("title:", title)
        }
        
        guard let jsonData = try? JSONSerialization.data(withJSONObject: dic, options: []) else {
            fatalError("No JSON data")
        }
        print("JSON data:", jsonData)
    }
    
    func jsonToModel(_ data: Data) {
        let list = try! JSONDecoder().decode(NewsList.self, from: data)
        print("list:", list)
        print("page:", list.page)
        print("next:", list.next)
        print("list:", list.list)
        print()
        
        for news in list.list {
            print("title:", news.title)
            print("content:", news.content)
            print("read count:", news.readCount)
            print("is big:", news.isBig)
            print()
        }
        
        guard let jsonData = try? JSONEncoder().encode(list) else {
            fatalError("No JSON data")
        }
        print("JSON data:", jsonData)
        
        let str = String(data: jsonData, encoding: .utf8)!
        print("str:", str)
    }
}

