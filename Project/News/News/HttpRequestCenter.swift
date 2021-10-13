//
//  HttpRequestCenter.swift
//  News
//
//  Created by wang yu on 2021/10/10.
//

import UIKit

class HttpRequestCenter: NSObject {

    static let apiKey = "47c03505957b12d36f9c4841c8333ede"
    
    static func request(urlString: String, responseClosure: @escaping (Bool, Array<News>) -> Void) {
        let config = URLSessionConfiguration.default
        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        let session = URLSession(configuration: config)
        let task = session.dataTask(with: request,
                                    completionHandler: { (data, response, error) in
            var dictionary: Dictionary<String, Any>? = nil
            do {
                dictionary = try? JSONSerialization.jsonObject(with: data!,
                                                                   options:JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
            } catch {
            }
            if let dictionary = dictionary, error == nil, dictionary["code"] as? Int == 200 {
                var data = Array<News>()
                for dic in dictionary["newslist"] as! Array<Dictionary<String, String>> {
                    let news = News()
                    news.id = dic["id"]!
                    news.time = dic["ctime"]!
                    news.title = dic["title"]!
                    news.desc = dic["description"]!
                    news.source = dic["source"]!
                    if dic["picUrl"]!.hasPrefix("http") {
                        news.picUrl = dic["picUrl"]!
                    } else {
                        news.picUrl = "http:" + dic["picUrl"]!
                    }
                    if dic["url"]!.hasPrefix("http") {
                        news.url = dic["url"]!
                    } else {
                        news.url = "http:" + dic["url"]!
                    }
                    if news.title!.contains("新冠") || news.title!.contains("新型冠状")
                        || news.title!.contains("疫") || news.title!.uppercased().contains("COVID"){
                        continue
                    }
                    if news.desc!.contains("新冠") || news.desc!.contains("新型冠状")
                        || news.desc!.contains("疫") || news.desc!.uppercased().contains("COVID"){
                        continue
                    }
                    data.append(news)
                }
                responseClosure(true, data)
            } else {
                responseClosure(false, Array<News>())
            }
        })
        task.resume()
    }
}
