//
//  AppView.swift
//  Coinbase
//
//  Created by Norah Binny on 4/21/24.
//

import SwiftUI

struct AppView: View {
    @State private var selectedTab = "My Assets"

    init() {
        // Customize the UITabBar appearance
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemBackground
        
        // Shadow for the tab bar
        appearance.shadowColor = .black
        appearance.shadowImage = UIImage()
        
        // Apply the appearance settings
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            MyAssetsView()
                .tabItem {
                    Label("My Assets", systemImage: "dollarsign.circle")
                }
                .tag("My Assets")
            
            TradeView()
                .tabItem {
                    Label("Trade", systemImage: "arrow.triangle.swap")
                }
                .tag("Trade")
        }
    }
}

struct AppViewPre: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
