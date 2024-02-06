//
//  MenuItem.swift
//  Little Lemon Menu
//
//  Created by Pedro Orellana on 2/4/24.
//

import Foundation


protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String {get}
    var menuCategory: MenuCategory {get}
    var orderCount: Int {get set}
    var price: Double {get}
    var ingredients: [Ingredient] {get set}
}


struct MenuItem: Identifiable, MenuItemProtocol, Hashable {
    var id: UUID = UUID()
    var title: String
    var menuCategory: MenuCategory
    var orderCount: Int
    var price: Double
    var ingredients: [Ingredient]
    
}
    



func getFoodItems() -> [MenuItem] {
    let foods = [
        MenuItem(title: "Spaguetti", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Pasta,.Carrot,.TomatoSauce]),
        MenuItem(title: "Hamburger", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Broccoli,.TomatoSauce,.Carrot]),
        MenuItem(title: "Soup", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Spinach, .TomatoSauce]),
        MenuItem(title: "Pizza", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Carrot, .Broccoli, .Pasta]),
        MenuItem(title: "Ravioli", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Carrot, .Carrot, .Carrot]),
        MenuItem(title: "Sushi", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Spinach, .Pasta]),
        MenuItem(title: "Sandwich", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.TomatoSauce, .Spinach]),
        MenuItem(title: "Salad", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Broccoli,.Carrot,.Spinach]),
        MenuItem(title: "Super Salad", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Pasta, .TomatoSauce, .Carrot]),
        MenuItem(title: "Steak", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Broccoli, .Pasta, .Spinach,.TomatoSauce]),
        MenuItem(title: "Stew", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Spinach, .Carrot, .TomatoSauce]),
        MenuItem(title: "Ribs", menuCategory: .Food, orderCount: 10, price: 10.99, ingredients: [.Spinach, .Carrot, .TomatoSauce])
    ]
    return foods
}

func getDrinkItems() -> [MenuItem] {
    let drinks = [
        MenuItem(title: "Smoothie 1", menuCategory: .Drink, orderCount: 7, price: 7.99, ingredients: [.Pasta, .TomatoSauce]),
        MenuItem(title: "Smoothie 2", menuCategory: .Drink, orderCount: 7, price: 7.99, ingredients: [.Broccoli, .Carrot, .Spinach]),
        MenuItem(title: "Smoothie 3", menuCategory: .Drink, orderCount: 7, price: 7.99, ingredients: [.Broccoli, .Carrot, .Pasta, .Spinach, .TomatoSauce]),
        MenuItem(title: "Sauce drink", menuCategory: .Drink, orderCount: 7, price: 7.99, ingredients: [.TomatoSauce, .TomatoSauce, .TomatoSauce]),
        MenuItem(title: "Drink 5", menuCategory: .Drink, orderCount: 7, price: 7.99, ingredients: [.Broccoli, .Broccoli, .Broccoli]),
        MenuItem(title: "Drink 6", menuCategory: .Drink, orderCount: 7, price: 7.99, ingredients: [.Spinach, .Spinach, .Spinach]),
        MenuItem(title: "Carrot drink", menuCategory: .Drink, orderCount: 7, price: 7.99, ingredients: [.Carrot, .Carrot, .Carrot]),
        MenuItem(title: "Last drink", menuCategory: .Drink, orderCount: 7, price: 7.99, ingredients: [.Pasta, .Spinach, .Broccoli])
    ]
    return drinks
}

func getDessertItems() -> [MenuItem] {
    let desserts = [
        MenuItem(title: "Pasta cake", menuCategory: .Dessert, orderCount: 11, price: 12.99, ingredients: [.Pasta, .Broccoli, .Carrot]),
        MenuItem(title: "Cake 1", menuCategory: .Dessert, orderCount: 11, price: 12.99, ingredients: [.Spinach, .TomatoSauce, .Broccoli]),
        MenuItem(title: "Cake 2", menuCategory: .Dessert, orderCount: 11, price: 12.99, ingredients: [.Broccoli, .Carrot, .Pasta, .Spinach, .TomatoSauce]),
        MenuItem(title: "Carrot cake", menuCategory: .Dessert, orderCount: 11, price: 12.99, ingredients: [.Carrot, .TomatoSauce])
    ]
    
    return desserts
}
