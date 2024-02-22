//
//  ContentView.swift
//  purchases
//
//  Created by Aarif Shaikh on 2024/02/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 150),spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(itemList, id: \.id) { item in
                        ItemCard(item: item).environmentObject(cartManager)
                    }
                }.padding()
            }.navigationTitle(Text("Stuff")).toolbar {
                NavigationLink {
                    CartView().environmentObject(cartManager)
                } label: {
                    Cart(numOfItems: cartManager.items.count) 
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
