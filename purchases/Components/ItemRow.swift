//
//  ItemRow.swift
//  purchases
//
//  Created by Aarif Shaikh on 2024/02/23.
//

import SwiftUI

struct ItemRow: View {
    @EnvironmentObject var cartManager: CartManager
    
    var item: Item
    var body: some View {
        HStack(spacing: 20) {
            Image(item.image).resizable().aspectRatio(contentMode: .fit).frame(width: 40).cornerRadius(10)
            VStack(alignment: .leading, spacing: 10) {
                Text(item.name).bold()
                Text("\(item.price, specifier: "%.2f")$")
            }
            Spacer()
            Image(systemName: "trash").foregroundColor(.red).onTapGesture {
                cartManager.removeFromCart(item: item)
            }
        }.padding(.horizontal).frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ItemRow(item: itemList[3]).environmentObject(CartManager())
}
