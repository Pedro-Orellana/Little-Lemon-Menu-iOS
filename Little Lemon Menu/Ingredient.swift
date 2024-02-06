//
//  Ingredient.swift
//  Little Lemon Menu
//
//  Created by Pedro Orellana on 2/4/24.
//

import Foundation


enum Ingredient: String, Identifiable {
    
    var id: UUID {
        return UUID()
    }
    
    case Spinach
    case Broccoli
    case Carrot
    case Pasta
    case TomatoSauce
}
