//
//  MovieView.swift
//  StudioGhibliLookup
//
//  Created by Andrew Saeyang on 5/4/22.
//

import Foundation
import SwiftUI

///Mock view to test grid
struct MovieView: View {
    @Binding var isShowingDetailView: Bool
    
    let title: String
    var body: some View {
        VStack {
            
            Button(action: {
                NavigationLink(destination: DetailView(), isActive: $isShowingDetailView){
                    Text("Show Detail")
                }
            }, label: {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.random)
            })
            Text(title)
                .font(.title2)
        }
        
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(isShowingDetailView: .constant(false), title: "Hello world")
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
