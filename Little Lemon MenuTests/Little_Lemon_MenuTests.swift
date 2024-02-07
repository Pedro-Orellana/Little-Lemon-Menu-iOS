//
//  Little_Lemon_MenuTests.swift
//  Little Lemon MenuTests
//
//  Created by Pedro Orellana on 2/6/24.
//

import XCTest
@testable import Little_Lemon_Menu

final class Little_Lemon_MenuTests: XCTestCase {

    func test_menu_item_title_is_same_as_initialized_value() {
        let menuItemTitle = "Weird Hamburger"
        let menuItem = MenuItem(title: menuItemTitle, menuCategory: .Food, orderCount: 11, price: 11.99, ingredients: [.Broccoli, .TomatoSauce, .Carrot])
        XCTAssert(menuItem.title == menuItemTitle)
    }
    
    func test_menu_item_ingredients_are_same_as_initialized_value() {
        let ingredients: [Ingredient] = [.Broccoli, .Carrot, .Pasta]
        let menuItem = MenuItem(title: "Veggie Pasta", menuCategory: .Food, orderCount: 10, price: 10.59, ingredients: ingredients)
        XCTAssert(menuItem.ingredients == ingredients)
    }
    

}
