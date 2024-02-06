//
//  ContentView.swift
//  Little Lemon Menu
//
//  Created by Pedro Orellana on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            MenuItemsView()
            
            .toolbar {
                NavigationLink(destination: MenuItemsOptionView() ) {
                    Image(systemName: "line.3.horizontal")
                }
            }
        }
       
    }
}

#Preview {
    ContentView()
}
