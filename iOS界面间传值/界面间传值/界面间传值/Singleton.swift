//
//  Singleton.swift
//  界面间传值
//
//  Created by wang yu on 2021/10/8.
//

import UIKit

class Singleton: NSObject {

    var data: String?
    static let instance = Singleton()
    
    private override init() {
    }
}
