//
//  FruitModel.swift
//  Fruits
//
//  Created by Beni Ibeh on 30/05/2023.
//

import SwiftUI

// MARK: Fruits Data Model
struct Fruit: Identifiable {
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
