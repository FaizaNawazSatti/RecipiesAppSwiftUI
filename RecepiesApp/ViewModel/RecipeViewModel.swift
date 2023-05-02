//
//  RecipeViewModel.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import Foundation

class RecipeViewModel : ObservableObject{
    @Published private(set) var recipes : [Recipe]  = []
    
    init(){
        recipes = Recipe.all
    }
    
    func addRecipe(_ recipe : Recipe){
        recipes.append(recipe)
    }
}
