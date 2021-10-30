//
//  ContentView.swift
//  Environment
//
//  Created by wang yu on 2021/10/30.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var mode
    var body: some View {
        VStack {
            Text("系统颜色模式：\(mode == .dark ? "暗黑模式" : "白昼模式")")
            Text("小马视频")
                .padding()
                .font(.largeTitle)
                .background(mode == .dark ? Color.blue : Color.yellow)
                .foregroundColor(mode == .dark ? Color.white : Color.black)
                .cornerRadius(15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
