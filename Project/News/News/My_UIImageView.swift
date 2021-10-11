//
//  My_UIImageView.swift
//  News
//
//  Created by wang yu on 2021/10/10.
//

import Foundation
import UIKit

extension UIImageView{
    func downloadedFrom(imageurl : String?){
        guard imageurl != nil else {
            self.image = nil
            return
        }
        //创建URL对象
        let url = URL(string: imageurl!)!
        //创建请求对象
        let request = URLRequest(url: url)

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request, completionHandler: {
            (data, response, error) -> Void in
            if error != nil{
                print(error.debugDescription)
            }else{
                //将图片数据赋予UIImage
                let img = UIImage(data:data!)

                // 这里需要改UI，需要回到主线程
                DispatchQueue.main.async {
                  self.image = img
                }

            }
        }) as URLSessionTask

        //使用resume方法启动任务
        dataTask.resume()
    }
}

