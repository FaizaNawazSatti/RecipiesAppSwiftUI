//
//  CategoryView.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

struct CategoryView: View {
    var category : Category
    @EnvironmentObject var recipeViewModel : RecipeViewModel
    // Computed Property
    
    var recipes :  [Recipe]{
        return recipeViewModel.recipes.filter{$0.category.rawValue == category.rawValue}
    }
    
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipes)
        }.navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipeViewModel())
    }
}
