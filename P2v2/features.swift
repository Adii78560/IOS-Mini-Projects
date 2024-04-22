//
//  features.swift
//  P2v2
//
//  Created by Adii I on 22/04/24.
//

import SwiftUI

struct features: View {
    var body: some View {
        VStack{
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
            
            featureCard(iconNmame: "quote.bubble.fill", description: "A multiline description about a feature paired with the image on the left.")
            
            featureCard(iconNmame: "person.2.crop.square.stack.fill", description: "Short summary")
        }
        .padding()
    }
}

#Preview {
    features()
}
