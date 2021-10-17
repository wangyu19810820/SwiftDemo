//
//  CookingWayView.swift
//  ThisIsBeijing
//
//  Created by wang yu on 2021/10/16.
//

import SwiftUI

struct CookingWayView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Image("蒸-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("蒸")
                }
                Divider()
                HStack() {
                    Image("煎-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("煎")
                }
                Divider()
                HStack() {
                    Image("烙-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("烙")
                }
                Divider()
                HStack() {
                    Image("爆-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("爆")
                }
            }
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Text("烤")
                    Spacer()
                    Image("烤-Icon")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("涮")
                    Spacer()
                    Image("涮-Icon")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("冲")
                    Spacer()
                    Image("冲-Icon")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("煨")
                    Spacer()
                    Image("煨-Icon")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
        }
        .font(.callout)
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(width: 42, height: 42, alignment: .center)
    }
}

struct CookingWayView_Previews: PreviewProvider {
    static var previews: some View {
        CookingWayView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
