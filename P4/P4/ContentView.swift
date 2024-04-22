//
//  ContentView.swift
//  P4
//
//  Created by Adii I on 22/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var names: [String] = ["jiya", "Riya", "Priya", "Seema", "Meena", "Tria"]
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    var body: some View {
        VStack {
            
            Text(pickedName.isEmpty ? "" : pickedName)
            List{
                ForEach(names, id: \.self){
                    name in Text(name)
                }
                
            }
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled(true)
                .onSubmit{
                    if !nameToAdd.isEmpty{
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
            
            Button("Pick Random Name"){
                if let randomName = names.randomElement(){
                    pickedName = randomName
                }else{
                    pickedName = ""
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
