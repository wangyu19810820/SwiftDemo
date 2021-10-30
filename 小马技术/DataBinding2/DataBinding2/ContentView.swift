//
//  ContentView.swift
//  DataBinding2
//
//  Created by wang yu on 2021/10/29.
//

import SwiftUI

struct HeaderView: View {
    @Binding var title: String
    var counter: Int = 0
    
    init(title: Binding<String>) {
        self._title = title
        let sentence = self._title.wrappedValue
        self.counter = sentence.count
    }
    
    var body: some View {
        Text(self.title + "/\(self.counter)")
    }
}

struct ContentView: View {
    @State private var title = "小马技术视频"
    
    var body: some View {
        VStack {
            Text(self.title)
                .font(.title)
            HeaderView(title: self.$title)
            Button(action: {
                self.title = "小马 SwiftUI 教学"
            }) {
                Text("确定")
                    .font(.title)
                    .padding(10)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(13)
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
