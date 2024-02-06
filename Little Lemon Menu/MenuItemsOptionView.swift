//
//  MenuItemsOptionView.swift
//  Little Lemon Menu
//
//  Created by Pedro Orellana on 1/30/24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    enum Categories : String, CaseIterable {
        case Food = "Food"
        case Drink = "Drink"
        case Dessert = "Dessert"
    }
    
    enum SortBy: String, CaseIterable {
        case MostPopular = "Most Popular"
        case Price = "Price $-$$$"
        case AZ = "A-Z"
        
    }
    
    var body: some View {
        
        VStack {
            List {
                Section("SELECTED FOOD") {
                    ForEach(Categories.allCases, id: \.self.rawValue) { cat in
                        Text(cat.rawValue)
                    }
                }
                
                Section("SORT BY") {
                    ForEach(SortBy.allCases, id: \.self.rawValue) { sort in
                        Text(sort.rawValue)
                    }
                }
            }
            
            .navigationTitle("Filter")
        }
        
        
    }
}

#Preview {
    MenuItemsOptionView()
}
