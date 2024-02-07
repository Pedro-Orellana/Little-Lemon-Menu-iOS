//
//  MenuItemsView.swift
//  Little Lemon Menu
//
//  Created by Pedro Orellana on 1/30/24.
//

import SwiftUI

struct MenuItemsView: View {
    
    @ObservedObject var viewModel = MenuViewViewModel()

    
    var body: some View {
        
            ScrollView {
                
                VStack(alignment: .leading) {
                    Text("Food")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Grid {
                        ForEach(viewModel.foodMenuItems, id: \.self.first?.id) { row in
                            GridRow {
                                ForEach(row) { menuItem in
                                    MenuItemCard(menuItem: menuItem)
                                }
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                           
                        }
                    }
                    
                    Text("Drinks")
                        .font(.title)
                        .padding()
                    
                    
                    Grid {
                        ForEach(viewModel.drinkMenuItems, id: \.self.first?.id) { row in
                            
                            GridRow {
                                ForEach(row) {menuItem in
                                    MenuItemCard(menuItem: menuItem)
                                }
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        }
                    }
                    
                    Text("Desserts")
                        .font(.title)
                        .padding()
                    
                    Grid {
                        
                        ForEach(viewModel.dessertMenuItems, id: \.self.first?.id) { row in
                            
                            GridRow {
                                ForEach(row) { menuItem in
                                    MenuItemCard(menuItem: menuItem)
                                }
                            }
                            .frame(maxWidth: .infinity)
                            
                        }
                    }
                    
                }
              
             
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .topLeading)
           
        
            .navigationTitle("Menu")
    }
        
}



#Preview {
    MenuItemsView()
}
