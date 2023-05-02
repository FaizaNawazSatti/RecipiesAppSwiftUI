//
//  NewRecepieView.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

struct NewRecepieView: View {
    @State private var isShowAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Add Recipe Manually"){
                isShowAddRecipe = true
            }.navigationTitle("New Recipe")
        }.navigationViewStyle(.stack)
            .sheet(isPresented: $isShowAddRecipe) {
                AddRecipeView()
            }
    }
}

struct NewRecepieView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecepieView()
    }
}
