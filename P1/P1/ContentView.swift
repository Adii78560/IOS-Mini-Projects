//
//  ContentView.swift
//  P1
//
//  Created by Adii I on 21/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Knock Knock!")
                    .padding()
                    .background(Color.red, in: RoundedRectangle(cornerRadius: 8))
                
            }
            VStack{
                Image(systemName: "car.fill")
                    .imageScale(.large)
                    .foregroundColor(.blue)
                Text("Who's Their")
                    .padding()
                    .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                
            }
        }
        HStack{
            DayForeCast(day: "Mon", high: 50, low: 21, isRainy: false)
            DayForeCast(day: "Tue", high: 32, low: 58, isRainy: true)
            DayForeCast(day: "Wed", high: 23, low: 65, isRainy: false)
        
        }
        .padding()
    
        .background(Color.black, in: RoundedRectangle(cornerRadius: 8))
        
    }
}

#Preview {
    ContentView()
}

struct DayForeCast: View {
    
    var day: String
    var high: Int
    var low: Int
    var isRainy: Bool
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        }
        else{
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        }
        else{
            return Color.yellow
        }
    }
    
    
    var body: some View {
        VStack{
//            Text("new Stack")
            Text(day)
                .font(.largeTitle)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(.semibold)
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)

            
            
        }
        
        .padding()
    }
}
