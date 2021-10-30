//
//  ObservableObjectApp.swift
//  ObservableObject
//
//  Created by wang yu on 2021/10/30.
//

import SwiftUI

@main
struct ObservableObjectApp: App {
    var appData = AppData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(appData: appData)
        }
    }
}
