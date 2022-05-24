//
//  ContentView.swift
//  StudioGhibliLookup
//
//  Created by Andrew Saeyang on 5/4/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        //UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        TabView {
            MarathonHomeView()
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")

                }).tag(0)

            NewsView()
                .tabItem({
                    Image(systemName: "book")
                    Text("News")
                }).tag(1)

            FavoritesView()
                .tabItem({
                    Image(systemName: "heart")
                    Text("Favorites")
                }).tag(2)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
