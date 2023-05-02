//
//  AddRecipeView.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipeViewModel : RecipeViewModel
    
    @State private var name : String = ""
    @State private var selectedCategory : Category = Category.main
    @State private var description : String = ""
    @State private var ingredients : String = ""
    @State private var directions : String = ""
    @State private var navigateToRecipe : Bool = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("Category")) {

                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text("\(category.rawValue)")
                                .tag(category)
                        }
                    }
                }
                
                Section(header: Text("Descriptions")) {
                    TextEditor(text: $description)
                }
                
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.titleAndIcon)
                    }

                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipeViewModel.recipes.sorted{$0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.titleOnly)
                        }
                    }.disabled(name.isEmpty)

                   

                }
            })
            .navigationTitle("New Recipe")
                .navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}

extension AddRecipeView{
    private func saveRecipe(){
        
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        let datePublished = dateFormatter.string(from: now)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: Category(rawValue: selectedCategory.rawValue) ?? .main, datePublished: datePublished, url: "")
        recipeViewModel.addRecipe(recipe)
    }
}
