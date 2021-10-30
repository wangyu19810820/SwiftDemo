//
//  ContentView.swift
//  ObservableObject
//
//  Created by wang yu on 2021/10/30.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var appData: AppData
    
    var body: some View {
        VStack {
            Text(self.appData.AppTitle)
                .bold()
                .font(.largeTitle)
            Text(self.appData.Author)
                .bold()
                .font(.title)
                .foregroundColor(.gray)
            Button(action: {
                self.appData.Author = "xiaoma"
            }) {
                Text("更新")
                    .padding()
                    .font(.subheadline)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(appData: AppData())
    }
}
