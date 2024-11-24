//
//  LibraryNavStack.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//


import SwiftUI

class LibraryRouter: Router {}

struct LibraryNavStack: View {
    @StateObject private var router = LibraryRouter()
    
    var body: some View {
        NavigationStack(path: $router.routes) {
            LibraryView()
                .environmentObject(router)
                .navigationDestination(for: Route.self) { route in
                    route.destination(router: router)
                        .environmentObject(router)
                }
        }
    }
}
