//
//  ContentView.swift
//  DataBinding
//
//  Created by wang yu on 2021/10/29.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = "小马视频"
    @State private var textInput: String = ""
    
    var body: some View {
        VStack {
            Text(self.title)
                .font(.title)
            TextField("请输入内容", text: self.$textInput)
                .font(.title)
                .frame(width: UIScreen.main.bounds.width - 20, height: 50, alignment: .center)
                .padding(10)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                self.title = self.textInput
            }, label: {
                Text("确定")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(15)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
