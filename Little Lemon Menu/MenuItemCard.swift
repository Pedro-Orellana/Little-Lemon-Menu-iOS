//
//  MenuItemCard.swift
//  Little Lemon Menu
//
//  Created by Pedro Orellana on 2/5/24.
//

import SwiftUI

struct MenuItemCard: View {
    
    let menuItem: MenuItem
    
    var body: some View {
        
        NavigationLink(destination: MenuItemsDetailsView(menuItem: menuItem)) {
            
            VStack {
                if(menuItem.title == "") {
                    Color.white
                        .frame(maxWidth: .infinity, maxHeight: 100)
                } else {
                    Color.blue
                        .frame(maxWidth: .infinity, maxHeight: 100)
                    Text(menuItem.title)
                }
              
            }
            .frame(minWidth: 100, maxWidth: 100,minHeight: 120, maxHeight: 120, alignment: .top)
        }
        
    
    }
}

//#Preview {
//    var menuItem = MenuItem(title: "Super Pasta", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Pasta, .TomatoSauce])
//    
//    MenuItemCard(menuItem: "Something")
//}
