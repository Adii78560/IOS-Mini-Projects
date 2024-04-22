//
//  ContentView.swift
//  P2
//
//  Created by Adii I on 22/04/24.
//

import SwiftUI

struct welcomePage: View {
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150)
                    .frame(height: 150)
                    .foregroundStyle(.tint)
                Image("shoe1")
                    .frame(width: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .font(.system(size: 70))
                
            }
            
            
            
            Image(systemName: "globe")
                .renderingMode(.none)
                .aspectRatio(contentMode: .fit)
                .frame(width: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
                .imageScale(.large)
                .foregroundStyle(.tint)
                
                
            Text("Welcome to MyApp")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(.top)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Text("Description Text")
                .font(.title2)
                .fontWeight(.medium)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            
        }
        .border(Color.orange, width: 2)
        .padding()
        .border(.purple, width: 3)
    }
    
}

#Preview {
    welcomePage()
    
}
