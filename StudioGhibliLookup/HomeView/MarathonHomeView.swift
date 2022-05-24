//
//  HomeView.swift
//  StudioGhibliLookup
//
//  Created by Andrew Saeyang on 5/4/22.
//

import SwiftUI

struct MarathonHomeView: View {
    
    @State var text: String = ""
    var body: some View {
       
        VStack {
            Spacer()
            Text("Movie Marathon Mode")
                .font(.system(size: 42))
                .bold()
                .multilineTextAlignment(.center)
            
            Text("How much time do you have to spend watching movies?")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .bold()
                .padding(.top)
                .padding(.horizontal, 30)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
            
            
            HStack {
                TextField("Hours", text: $text)
                    .padding(14)
                    .padding(.leading, -7)
                    .padding(.horizontal, 10)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
            }
            .padding(.horizontal, 30)
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("Find my movies")
                    .bold()
                    .font(.system(size: 22))
            })
            .frame(width: 325, height: 58)
                .background(.red)
                .cornerRadius(8)
                .foregroundColor(.white)
                
            
           Spacer()
        }
    }
}

struct MarathonHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MarathonHomeView()
    }
}
