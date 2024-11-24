//
//  FavoritesView.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject private var favoritesRouter: FavoritesRouter
    
    var body: some View {
        VStack {
            Text("Favorites")
            Button("Detail (Push)") {
                favoritesRouter.navigate(to: .detail)
            }
        }
    }
}
