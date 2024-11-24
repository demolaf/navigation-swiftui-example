//
//  HomeView.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var homeRouter: HomeRouter
    @SceneStorage("showSettings") private var showSettings = false
    
    @State private var showFavorites = false
    
    var body: some View {
        VStack {
            Text("Home")
            Button("Detail (Push)") {
                homeRouter.navigate(to: .detail)
            }
            Button("Favorites (Present)") {
                showFavorites = true
            }
        }
        .sheet(isPresented: $showFavorites) {
            FavoritesNavStack()
        }
        .toolbar {
            ToolbarItemGroup(placement: .topBarTrailing) {
                Button {
                    withAnimation {
                        showSettings = true
                    }
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}
