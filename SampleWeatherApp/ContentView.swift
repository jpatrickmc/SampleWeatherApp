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
            
            LinearGradient(gradient: Gradient(colors: [Color(.red), Color(.blue)]), startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            
 
            
            Text("London")
                .font(.system(size: 32, weight: .regular))
                .foregroundColor(.white)
             
                .frame(width: 250, height: 100)
                .background(Color(.red))
        }
    }
}

#Preview {
    ContentView()
}
