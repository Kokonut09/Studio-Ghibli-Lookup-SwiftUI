//
//  CardView.swift
//  StudioGhibliLookup
//
//  Created by Andrew Saeyang on 5/4/22.
//

import SwiftUI

struct CardView: View {
    let title: String
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 12).foregroundColor(.random)
            Text(title)
                .font(.title2)
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Hello world")
    }
}

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
