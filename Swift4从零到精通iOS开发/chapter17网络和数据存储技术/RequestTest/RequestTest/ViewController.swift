//
//  ViewController.swift
//  RequestTest
//
//  Created by wang yu on 2021/10/10.
//

import UIKit

class ViewController: UIViewController {

    let urlString = "http://api.tianapi.com/esports/index?key=%@&num=10"
    let apiKey = "47c03505957b12d36f9c4841c8333ede"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = URLSessionConfiguration.default
        let url = URL(string: String(format: urlString, apiKey))
        let request = URLRequest(url: url!)
        let session = URLSession(configuration: config)
        let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
            let dictionary = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)
            // print(dictionary ?? "未解析到数据")
        })
        task.resume()
        
        print("====================================================================================")
        
        let session2 = URLSession(configuration: .default)
        // 设置URL
        let url2 = "http://api.tianapi.com/esports/index"
        var request2 = URLRequest(url: URL(string: url2)!)
        request2.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "enctype")
        request2.httpMethod = "POST"
        // 设置要post的内容，字典格式
        let postData = ["key": apiKey, "num": "10", "page": "1"]
        let postString = postData.compactMap({ (key, value) -> String in
            return "\(key)=\(value)"
        }).joined(separator: "&")
        request2.httpBody = postString.data(using: .utf8)
        // 后面不解释了，和GET的注释一样
        let task2 = session.dataTask(with: request) {(data, response, error) in
            do {
                let r = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                print(r)
            } catch {
                print("无法连接到服务器")
                return
            }
        }
        task2.resume()
    }


}

