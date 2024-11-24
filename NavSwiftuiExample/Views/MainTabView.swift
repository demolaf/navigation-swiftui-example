//
//  MainTabView.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

enum Tabs: String, CaseIterable, Identifiable {
    case home
    case library
    
    var id: Self { self }
    
    var title: String { rawValue.capitalized }
    
    var image: String {
        switch self {
        case .home: "house"
        case .library: "books.vertical"
        }
    }
    
    @ViewBuilder
    var navStack: some View {
        switch self {
        case .home: HomeNavStack()
        case .library: LibraryNavStack()
        }
    }
}

struct MainTabView: View {
    @State private var selectedTab: Tabs = .home
    @SceneStorage("showSettings") private var showSettings = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(Tabs.allCases) { tab in
                tab.navStack
                    .tag(tab)
                    .tabItem {
                        Label(tab.title, systemImage: tab.image)
                    }
            }
        }
        .push(showSettings) {
            SettingsView()
        }
    }
}
