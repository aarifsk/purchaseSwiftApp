//
//  Cart.swift
//  purchases
//
//  Created by Aarif Shaikh on 2024/02/23.
//

import SwiftUI

struct Cart: View {
    var numOfItems: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart").padding(.top,7)
            if numOfItems > 0 {
                Text("\(numOfItems)").font(.caption2).bold().foregroundStyle(.white
                ).frame(width: 15,height:15).background(.red
                ).cornerRadius(40)
            }
        }    }
}

#Preview {
    Cart(numOfItems: 1)
}
