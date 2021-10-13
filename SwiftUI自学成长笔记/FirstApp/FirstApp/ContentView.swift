//
//  ContentView.swift
//  FirstApp
//
//  Created by wang yu on 2021/10/11.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    let cards: [Card] = cardData
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(20)
        }
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
