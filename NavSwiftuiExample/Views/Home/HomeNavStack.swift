//
//  HomeNavStack.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

class HomeRouter: Router {}

struct HomeNavStack: View {
    @StateObject private var router = HomeRouter()
    
    var body: some View {
        NavigationStack(path: $router.routes) {
            HomeView()
                .environmentObject(router)
                .navigationDestination(for: Route.self) { route in
                    route.destination(router: router)
                        .environmentObject(router)
                }
        }
    }
}
