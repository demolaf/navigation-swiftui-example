//
//  LibraryView.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

struct LibraryView: View {
    @EnvironmentObject private var libraryRouter: LibraryRouter
    
    var body: some View {
        VStack {
            Text("Library")
            Button("Detail (Push)") {
                libraryRouter.navigate(to: .detail)
            }
        }
    }
}
