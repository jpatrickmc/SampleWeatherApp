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
            
            VStack {
                Text("London")
                    .font(.system(size: 32, weight: .regular))
                    .foregroundColor(.white)
                
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                
                Text("20°C")
                    .font(.system(size: 36))
                    .foregroundColor(.white)
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
