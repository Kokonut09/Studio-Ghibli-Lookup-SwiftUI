//
//  HomeView.swift
//  StudioGhibliLookup
//
//  Created by Andrew Saeyang on 5/4/22.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    @State private var isShowingDetailView = false
    
    
    // 1. Number of items will be display in row
    var columns: [GridItem] = [
        GridItem(.flexible(minimum: 140)),
        GridItem(.flexible(minimum: 140)),
    ]
    // 2. Fixed height of card
    let height: CGFloat = 300
    // 3. Get mock cards data
    let movies: [Movie] = MockStore.cards
    
    
    
    var body: some View {
        
        NavigationView {
            
            
            
            
//            Form {
//                TextField("Movie", text: $searchText)
//                    .foregroundColor(.white)
//                    .cornerRadius(8)
//
//
//                .navigationTitle("Catalog")
//            }
           
            
            ScrollView {
                // 4. Populate into grid
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(movies) { movie in
                        MovieView(isShowingDetailView: .constant(isShowingDetailView), title: movie.title)
                            .frame(height: height)
                    }
                }
                .padding()
            }
            .navigationTitle("Catalog")
            
            
        }
        .searchable(text: $searchText)
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
