//
//  Route.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

enum Route: Hashable {
    case favorites
    case detail
    case search
    
    @ViewBuilder
    func destination(router: Router) -> some View {
        switch self {
        case .favorites:
            FavoritesView()
        case .detail:
            DetailView(router: router)
        case .search:
            SearchView()
        }
    }
}
