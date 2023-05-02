//
//  Tabbar.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            NewRecepieView()
                .tabItem {
                    Label("New Recepie", systemImage: "plus")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
            .environmentObject(RecipeViewModel())
    }
}
