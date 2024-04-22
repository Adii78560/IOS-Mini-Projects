//
//  features.swift
//  P2
//
//  Created by Adii I on 22/04/24.
//

import Foundation

import SwiftUI

struct featuresPage: View {
    let iconName: String
    let description: String
        
    var body: some View {
        VStack{
            Text("Features")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom)
        }
        HStack{
            Image(systemName: "person.2.crop.square.stack.fill")
                .font(.largeTitle)
 
                .foregroundColor(Color(.yellow))
            Text(description)
//                .frame(width: 50)
//                .padding(.trailing, 10)
            
            Spacer()

                
        }
        .padding()
        .background(.tint, in: RoundedRectangle(cornerRadius: 12))
        .foregroundColor(.white)
        HStack{
            Image(systemName: "quote.bubble.fill")
                .font(.largeTitle)
 
                .foregroundColor(Color(.yellow))
            Text("short Summary")
            Spacer()

                
        }
        .padding()
        .background(.tint, in: RoundedRectangle(cornerRadius: 12))
        .foregroundColor(.white)
        
        }
    }

#Preview {
    
    featuresPage(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
    
}
