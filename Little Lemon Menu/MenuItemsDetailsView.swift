//
//  MenuItemsDetailsView.swift
//  Little Lemon Menu
//
//  Created by Pedro Orellana on 1/30/24.
//

import SwiftUI

struct MenuItemsDetailsView: View {
    let menuItem: MenuItem
    var body: some View {
        
    ScrollView {
            
        VStack {
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 400)
                .padding()
            
            Text("Price:")
                .bold()
            Text("$" + String(menuItem.price))
                .padding(.bottom, 10)
            
            Text("Ordered:")
                .bold()
            Text(String(menuItem.orderCount))
                .padding(.bottom, 10)
            
            Text("Ingredients:")
                .bold()
            
            ForEach(menuItem.ingredients) { ingredient in
                Text(ingredient.rawValue)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .navigationTitle(menuItem.title)
    }
    
}
}


