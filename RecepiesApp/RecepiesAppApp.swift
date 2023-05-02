//
//  RecepiesAppApp.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

@main
struct RecepiesAppApp: App {
    @StateObject var recipeViewModel = RecipeViewModel ()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipeViewModel)
        }
    }
}
