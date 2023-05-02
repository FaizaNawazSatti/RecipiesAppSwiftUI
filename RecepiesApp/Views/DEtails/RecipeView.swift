//
//  RecipeView.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: recipe.image)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                
                    
                   
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                  .scaledToFit()
                  .frame(width: 100,height: 100,alignment: .center)
                  .foregroundColor(Color.white.opacity(0.7))
                  .frame(maxWidth: .infinity,maxHeight: .infinity)
                  
            }.frame(height: 300)
                .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3) , Color.gray]), startPoint: .top, endPoint: .bottom))
            
            VStack{
                Text("\(recipe.name)")
                 .font(.largeTitle).bold()
                 .multilineTextAlignment(.center)
                 .padding()
                
                VStack(alignment: .leading,spacing: 30){
                    if(!recipe.description.isEmpty){
                        Text("\(recipe.description)")
                    }
                    if(!recipe.ingredients.isEmpty){
                        VStack(alignment: .leading,spacing: 20){
                            Text("Ingredients")
                                .font(.headline)
                                .bold()
                            Text("\(recipe.ingredients)")
                        }
                    }
                    if(!recipe.directions.isEmpty){
                        VStack(alignment: .leading,spacing: 20){
                            Text("Directions")
                                .font(.headline)
                                .bold()
                            Text("\(recipe.directions)")
                        }
                    }
                }.frame(maxWidth: .infinity ,alignment: .leading)
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
