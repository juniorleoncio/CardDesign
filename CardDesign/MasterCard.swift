//
//  MasterCard.swift
//  CardDesign
//
//  Created by Junior Leoncio on 10/07/23.
//

import SwiftUI

struct MasterCard: View {
    var body: some View {
        ZStack {
            Color(.systemGray6)
            ZStack {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: 280, height: 180)
                    .foregroundColor(.black)
                    .offset(x: -2, y: 2)
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: 280, height: 180)
                    .foregroundColor(.yellow)
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(lineWidth: 5)
                    .frame(width: 280, height: 180)
                    .overlay(alignment: .bottomLeading) {
                        VStack(alignment: .leading) {
                            
                            HStack {
                                    
                                Text("8897 8954 6352 5632")
                                    .bold()
                                Spacer()
                                Image("sim")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 30, height: 20)
                            }
                            .padding()
                            
                            HStack {
                                Text("Card")
                                    .bold()
                                    .font(.title3)
                                Image(systemName: "globe")
                                    .font(.title3)
                                    .foregroundColor(.black.opacity(0.7))
                                
                                Spacer()
                                
                                Image("mastercard")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 45, height: 20)
                                    .offset(x: -5, y: -6)
                            }
                            .padding(8)
                        }
                    }
                    
                }
                .rotation3DEffect(.degrees(20), axis: (x: 10, y: 10, z: 0))
                .rotationEffect(.degrees(-10), anchor: .center)
                .offset(x: 10)
        }
        .ignoresSafeArea()
    }
}

struct MasterCard_Previews: PreviewProvider {
    static var previews: some View {
        MasterCard()
    }
}
