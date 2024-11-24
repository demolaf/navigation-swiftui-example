//
//  LoginView.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var showMainTab = false
    
    var body: some View {
        VStack {
            Text("Login")
            Button("Go To Main Tab") {
                withAnimation {
                    showMainTab = true
                }
            }
        }
        .push(showMainTab) {
            MainTabView()
        }
    }
}
