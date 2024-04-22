//
//  diceView.swift
//  P3
//
//  Created by Adii I on 22/04/24.
//

import SwiftUI

struct diceView: View {
    
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack{
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
            
            Button("Roll") {
                withAnimation{
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
            
        }
    }
}

#Preview {
    diceView()
}
