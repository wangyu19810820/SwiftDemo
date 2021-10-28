//
//  ContentView.swift
//  myApp
//
//  Created by wang yu on 2021/10/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0..<20) { item in
                NavigationLink(destination: Text("Detail")) {
                    HStack {
                        Image(systemName: "heart")
                            .resizable()
                            .foregroundColor(.red)
                            .frame(width: 50, height: 50, alignment: .center)
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Hello, world!")
                                .foregroundColor(.red)
                            Text("Detai")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Text("PlaceHolder")
                        }
                    }
                }
            }
            .navigationBarTitle("Navigation Bar")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
