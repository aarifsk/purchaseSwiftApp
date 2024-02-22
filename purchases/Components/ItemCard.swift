//
//  ItemCard.swift
//  purchases
//
//  Created by Aarif Shaikh on 2024/02/23.
//

import SwiftUI

struct ItemCard: View {
    @EnvironmentObject var cartManager : CartManager
    var item: Item
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(item.image).resizable().cornerRadius(10).frame(width:180).scaledToFit()
                VStack(alignment: .leading){
                    Text(item.name).bold()
                    Text("\(item.price, specifier: "%.2f")$")
                }.padding().frame(width:180,height:50, alignment: .leading).background(.ultraThinMaterial).cornerRadius(10)
            }.frame(width: 180, height: 180).shadow(radius: 10)
            Button {
                cartManager.addToCart(item: item)
            }label:{ Image(systemName: "plus").padding(10).foregroundColor(.white).background(.gray).cornerRadius(10).padding()}
        }
        }
       
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard(item: itemList[0]).environmentObject(CartManager())
    }
}
