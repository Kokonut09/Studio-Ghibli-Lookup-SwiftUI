//
//  Movie.swift
//  StudioGhibliLookup
//
//  Created by Andrew Saeyang on 5/4/22.
//

import Foundation
import SwiftUI

/// Mock Data to test grids
struct Movie: Identifiable {
    let id = UUID()
    let title: String
}

struct RowView: View {
    let movies: [Movie]
    let width: CGFloat
    let height: CGFloat
    let horizontalSpacing: CGFloat
    var body: some View {
        HStack(spacing: horizontalSpacing) {
            ForEach(movies) { movie in
                MovieView(isShowingDetailView: .constant(false), title: movie.title)
                    .frame(width: width, height: height)
            }
        }
        .padding()
    }
}
