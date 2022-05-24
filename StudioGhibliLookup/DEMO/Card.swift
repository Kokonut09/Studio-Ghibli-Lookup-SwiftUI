//
//  Card.swift
//  StudioGhibliLookup
//
//  Created by Andrew Saeyang on 5/4/22.
//

import Foundation
import SwiftUI


struct Card: Identifiable {
    let id = UUID()
    let title: String
}

struct RowView: View {
    let cards: [Card]
    let width: CGFloat
    let height: CGFloat
    let horizontalSpacing: CGFloat
    var body: some View {
        HStack(spacing: horizontalSpacing) {
            ForEach(cards) { card in
                CardView(title: card.title)
                    .frame(width: width, height: height)
            }
        }
        .padding()
    }
}
