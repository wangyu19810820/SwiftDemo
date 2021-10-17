//
//  FoodView.swift
//  ThisIsBeijing
//
//  Created by wang yu on 2021/10/16.
//

import SwiftUI

struct FoodView: View {
    let headers: [Header] = headersData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                Text("小吃的烹制方式")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                CookingWayView()
                    .frame(maxWidth: 640)
                
                VStack(alignment: .center, spacing: 20) {
                    Text("关于北京的小吃")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorBrownAdaptive"))
                        .padding(8)
                    Text("北京小吃，历史悠久，技艺精湛，品种繁多。荟萃我国大江南北、长城内外的风味。愿《这里是北京》App能拓宽您的视野，丰富您的生活！")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorBrownAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}
