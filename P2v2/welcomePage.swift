//
//  welcomePage.swift
//  P2v2
//
//  Created by Adii I on 22/04/24.
//

import SwiftUI

struct welcomePage: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .padding(.top)
                    .foregroundStyle(.tint)
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to MyApp")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
//                .border(Color.green)
                .padding(.top)
                .padding()
            
            
            Text("Description")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundStyle(.white)
//                .border(Color.blue)
            
        }
//        .border(.orange)
//        .padding()
//        .border(.pink)


    }
}

#Preview {
    welcomePage()
}
