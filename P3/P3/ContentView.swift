//
//  ContentView.swift
//  P3
//
//  Created by Adii I on 22/04/24.
//

import SwiftUI
struct ContentView: View {
    
    let gradientColors: [Color] = [
        .gradient1,
        .gradient2
    ]
    
    @State private var numberOfDice: Int = 1
    var body: some View {

        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            HStack{
                ForEach(1...numberOfDice, id: \.self){
                    _ in diceView()
                        .foregroundStyle(.white)
                }
            }
            
            HStack{
                Button("Remove Dice", systemImage: "minus.circle.fill"){
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                .foregroundStyle(.white)
                .brightness(-0.2)
                
                Button("Add Dice", systemImage: "plus.circle.fill"){
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
                .foregroundStyle(.white)
                .brightness(20)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.largeTitle)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .tint(.white)
        .contrast(2)
        

    }

    

    
}


#Preview {
    ContentView()
}
