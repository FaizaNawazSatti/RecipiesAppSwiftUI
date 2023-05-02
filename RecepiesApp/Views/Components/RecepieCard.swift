//
//  RecepieCard.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

struct RecepieCard: View {
    var recipe: Recipe
    
    var body: some View {
//        ZStack {
//            ZStack(alignment: .bottomLeading) {
                VStack{
                    AsyncImage(url: URL(string: recipe.image)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .overlay(alignment:.bottom) {
                                Text("\(recipe.name)")
                                 .font(.headline).bold()
                                 .foregroundColor(.white)
                                 .shadow(color:Color.black,radius: 3,x: 0,y: 0)
                                 .frame(maxWidth: 130)
                                 .padding()
                            }
                           
                    } placeholder: {
                        Image(systemName: "photo")
                            .resizable()
                          .scaledToFit()
                          .frame(width: 40,height: 40,alignment: .center)
                          .foregroundColor(Color.white.opacity(0.7))
                          .frame(maxWidth: .infinity,maxHeight: .infinity)
                          .overlay(alignment:.bottom) {
                              Text("\(recipe.name)")
                               .font(.headline).bold()
                               .foregroundColor(.white)
                               .shadow(color:Color.black,radius: 3,x: 0,y: 0)
                               .frame(maxWidth: 130)
                               .padding()
                          }
                    }
                }
                .frame(width: 160, height: 217,alignment: .top)
                .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3) , Color.gray]), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 20  , style: .continuous) )
                .shadow(color:Color.black.opacity(0.3),radius: 15,x: 0,y: 10)
                
//                VStack(alignment: .leading) {
//                    Text("\(video.duration) sec")
//                        .font(.caption).bold()
//
//                    Text("By \(recipe.name)")
//                        .font(.caption).bold()
//                        .multilineTextAlignment(.leading)
//                }
//                .foregroundColor(.white)
//                .shadow(radius: 20)
//                .padding()
//            }
//
//            Image(systemName: "play.fill")
//                .foregroundColor(.white)
//                .font(.title)
//                .padding()
//                .background(.ultraThinMaterial)
//                .cornerRadius(50)
        //}
    }
}

struct RecepieCard_Previews: PreviewProvider {
    static var previews: some View {
        RecepieCard(recipe: Recipe.all[0])
    }
}
