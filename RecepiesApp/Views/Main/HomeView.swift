//
//  HomeView.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipeViewModel : RecipeViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipeViewModel.recipes).navigationTitle("My Recipes")
            }
            
        }
        .navigationViewStyle(.stack)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
