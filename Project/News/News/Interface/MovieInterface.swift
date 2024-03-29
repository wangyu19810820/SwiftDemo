//
//  MovieInterface.swift
//  News
//
//  Created by wang yu on 2021/10/10.
//

import UIKit

class MovieInterface: NSObject {

    let urlString = "http://api.tianapi.com/film/index?key=%@&num=10&page=%d"
 
    func request(page: Int, responseClosure: @escaping (Bool, Array<News>) -> Void) {
        let url = String(format: urlString, HttpRequestCenter.apiKey, page)
        HttpRequestCenter.request(urlString: url, responseClosure: responseClosure)
    }
}
