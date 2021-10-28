//
//  ContentView.swift
//  ImageScale
//
//  Created by wang yu on 2021/10/28.
//

import SwiftUI

struct ContentView: View {
    @State private var zoomed: Bool = false
    
    var body: some View {
        ZStack(alignment: self.zoomed ? .top : .topTrailing) {
            Image("a")
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .navigationBarTitle(Text("老崔"), displayMode: .inline)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            Image("qq")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .padding(.all, 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
