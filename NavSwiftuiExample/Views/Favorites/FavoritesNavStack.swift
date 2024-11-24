//
//  FavoritesNavStack.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

class FavoritesRouter: Router {}

struct FavoritesNavStack: View {
    @StateObject private var router = FavoritesRouter()
    
    var body: some View {
        NavigationStack(path: $router.routes) {
            FavoritesView()
                .environmentObject(router)
                .navigationDestination(for: Route.self) { route in
                    route.destination(router: router)
                        .environmentObject(router)
                }
        }
    }
}
