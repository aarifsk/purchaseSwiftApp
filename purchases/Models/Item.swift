//
//  Item.swift
//  purchases
//
//  Created by Aarif Shaikh on 2024/02/23.
//

import Foundation

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Double
}

var itemList = [Item(name: "finish", image: "purchase1", price: Double.random(in: 0.1...10)),
                Item(name: "gaming", image: "purchase2", price: Double.random(in: 0.1...10)),
                Item(name: "controller 1", image: "purchase3", price: Double.random(in: 0.1...10)),
                Item(name: "vr", image: "purchase4", price: Double.random(in: 0.1...10)),
                Item(name: "controller 2", image: "purchase5", price: Double.random(in: 0.1...10)),
                Item(name: "2 controllers", image: "purchase6", price: Double.random(in: 0.1...10)),
]
