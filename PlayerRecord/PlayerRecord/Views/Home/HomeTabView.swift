//
//  HomeTabView.swift
//  PlayerRecord
//
//  Created by 박성준 on 2023/05/10.
//

import SwiftUI

struct HomeTabView: View {
    @State private var selection: Tab = .main
    
    enum Tab {
        case main
        case profile
    }
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Main", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
