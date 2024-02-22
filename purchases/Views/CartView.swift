//
//  CartView.swift
//  purchases
//
//  Created by Aarif Shaikh on 2024/02/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.items.count > 0 {
                ForEach(cartManager.items, id: \.id) { item in
                    ItemRow(item:item)
                }
                HStack {
                    Text("Total amount is ")
                    Spacer()
                    Text("$\(cartManager.total, specifier: "%.2f")").bold()
                }.padding()
            } else {
                Text("Empty, add stuff") }
        }.navigationTitle(Text("Cart")).padding(.top)    }
}

#Preview {
    CartView().environmentObject(CartManager())
}
