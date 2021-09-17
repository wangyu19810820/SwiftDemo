//
//  ClosureTest.swift
//  闭包
//
//  Created by wang yu on 2021/9/13.
//

import Foundation

func hasClosureMatch(arr:[Int], value:Int, cb:(Int, Int) -> Bool) -> Bool {
    for item in arr {
        if (cb(item, value)) {
            return true
        }
    }
    return false
}
