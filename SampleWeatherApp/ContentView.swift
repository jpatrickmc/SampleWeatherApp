//
//  ContentView.swift
//  SampleWeatherApp
//
//  Created by Patrick Mcdaniel on 10/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color(.blue), Color(.white)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            Text("London")
                .font(.system(size: 32, weight: .regular))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
