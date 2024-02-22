//
//  CartManager.swift
//  purchases
//
//  Created by Aarif Shaikh on 2024/02/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var items: [Item] = []
    @Published private(set) var total: Double = 0
    
    func addToCart(item: Item) {
        items.append(item)
        total += item.price
    }
    
    func removeFromCart(item: Item) {
        items = items.filter {$0.id != item.id}
        total -= item.price
    }
}
