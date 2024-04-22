//
//  ContentView.swift
//  P2
//
//  Created by Adii I on 22/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                    welcomePage()
                    featuresPage(iconName: String, description: <#T##String#>)
                }
                .tabViewStyle(.page)
    }
}

#Preview {
    ContentView()
}
