//
//  DetailView.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

struct DetailView: View {
    let router: Router
    
    var body: some View {
        VStack {
            Text("Detail")
            Button("Go to search") {
                router.navigate(to: .search)
            }
        }
    }
}
