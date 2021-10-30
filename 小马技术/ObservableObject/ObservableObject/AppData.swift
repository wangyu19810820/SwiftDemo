//
//  AppData.swift
//  ObservableObject
//
//  Created by wang yu on 2021/10/30.
//

import Foundation
import SwiftUI

class AppData: ObservableObject {
    @Published var AppTitle: String = "SwiftUI小马教学"
    @Published var Author: String = "Koma"
}
