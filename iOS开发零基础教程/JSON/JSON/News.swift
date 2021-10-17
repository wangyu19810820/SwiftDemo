//
//  News.swift
//  JSON
//
//  Created by wang yu on 2021/10/15.
//

import UIKit

class News: Codable {
    var title: String
    var content: String
    var readCount: Int {
        get { read_count }
        set { read_count = newValue }
    }
    private var read_count: Int
    
    var isBig: Bool {
        get { is_big ?? false }
        set { is_big = newValue }
    }
    private var is_big: Bool?
}

class NewsList: Codable {
    var page: Int
    var next: Bool
    var list: [News]
}
