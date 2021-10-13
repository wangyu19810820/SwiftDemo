//
//  CardModel.swift
//  FirstApp
//
//  Created by wang yu on 2021/10/11.
//

import SwiftUI

struct Card: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
