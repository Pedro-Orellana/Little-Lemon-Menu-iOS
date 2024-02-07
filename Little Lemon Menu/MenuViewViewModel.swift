//
//  MenuViewViewModel.swift
//  Little Lemon Menu
//
//  Created by Pedro Orellana on 2/4/24.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    
    @Published var foodMenuItems: [[MenuItem]]
    @Published var drinkMenuItems: [[MenuItem]]
    @Published var dessertMenuItems: [[MenuItem]]
    

    init() {
        let allFoods = getFoodItems()
        let allDrinks = getDrinkItems()
        let allDesserts = getDessertItems()
        
        self.foodMenuItems = Self.parseMenuItems(items: allFoods)
        self.drinkMenuItems = Self.parseMenuItems(items: allDrinks)
        self.dessertMenuItems = Self.parseMenuItems(items: allDesserts)
    }
    
    
    private static func parseMenuItems (items: [MenuItem]) -> [[MenuItem]] {
        
        var parsedItems: [[MenuItem]] = []
        
        for i in stride(from: 0, to: items.count, by: 3) {
            var subArray: [MenuItem] = []
            
            for j in (i...(i + 2)) {
                if(j < items.count) {
                    let menuItem = items[j]
                    subArray.append(menuItem)
                } else {
//                    let emptyItem = MenuItem(title: "", menuCategory: .Dessert, orderCount: 0, price: 0.0, ingredients: [])
//                    subArray.append(emptyItem)
                    break
                }
            }
            
            parsedItems.append(subArray)
            
        }
        
        return parsedItems
    }
}
