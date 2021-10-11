//
//  News.swift
//  News
//
//  Created by wang yu on 2021/10/10.
//

import UIKit

class News: NSObject {

    var id: String?
    var time: String?
    var title: String?
    var desc: String?
    var source: String?
    var picUrl: String?
    var url: String?
    
    override var description: String {
        return "id:\(id), time:\(time), title:\(title), desc:\(desc), source:\(source), picUrl:\(picUrl), url:\(url)"
    }
}
