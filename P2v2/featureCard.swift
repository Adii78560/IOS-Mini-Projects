//
//  featureCard.swift
//  P2v2
//
//  Created by Adii I on 22/04/24.
//

import SwiftUI

struct featureCard: View {
    let iconNmame: String
    let description: String
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        HStack{
            Image(systemName: iconNmame)
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(width: 50)
                .padding(.trailing, 10)
            
            
            
            Text(description)
                .foregroundStyle(.white)
            
            Spacer()
            
        }
        .padding()
        .background(.tint, in: RoundedRectangle(cornerRadius: 12))
        .foregroundStyle(.white)
//        .opacity(0.25)
//        .brightness(-0.2)
        
    }
}

#Preview {
    featureCard(iconNmame: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
}
