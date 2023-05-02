//
//  FavoritesView.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recpie to yours favorite yet.")
                .padding()
                .multilineTextAlignment(.center)
                .navigationTitle("Favorites")
        }.navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
