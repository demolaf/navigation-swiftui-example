//
//  SettingsView.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

struct SettingsView: View {
    @SceneStorage("showSettings") private var showSettings = false
    
    var body: some View {
        VStack {
            Text("Settings")
            Button("Go back") {
                withAnimation {
                    showSettings = false
                }
            }
        }
    }
}
