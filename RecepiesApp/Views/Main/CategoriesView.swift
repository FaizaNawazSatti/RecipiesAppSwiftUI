//
//  CategoriesView.swift
//  RecepiesApp
//
//  Created by Azmat Ali Akhtar on 27/04/2023.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases , id: \.self) { category in
                    NavigationLink {
                       CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }

                   
                }
            }.navigationTitle("Categories")
        }.navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
