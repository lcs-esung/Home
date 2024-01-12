//
//  ContentView.swift
//  Home
//
//  Created by Edna Sung on 2024-01-12.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    let firstGradientColors = Gradient(colors: [.lightBlue, .deepBlue, .deepPurple, .clear])
    
    let secondGradientColors = Gradient(colors: [.greyYellow, .deepPurple, .clear])
    
    // MARK: Computed properties

    var body: some View {
        ZStack {
            
            // Background
            Color.black
                .ignoresSafeArea()
            
            //First gradient
            RadialGradient(
                gradient: firstGradientColors,
                center: UnitPoint(x: 0.1, y: 0),
                startRadius: 0,
                endRadius: 1000
            )
            .ignoresSafeArea()
            
            //Second gradient
            RadialGradient(
                gradient: secondGradientColors,
                center: UnitPoint(x: 1, y: 1),
                startRadius: 0,
                endRadius: 900
            )
            .ignoresSafeArea()
            
            // Foreground
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
