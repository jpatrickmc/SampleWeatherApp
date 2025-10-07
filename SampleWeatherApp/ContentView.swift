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
            
            LinearGradient(gradient: Gradient(colors: [Color(.blue), Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack (spacing: 100) {
                Text("London")
                    .font(.system(size: 32, weight: .regular))
                    .foregroundColor(.white)
                
                VStack (spacing: 4) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                    
                    Text("20°C")
                        .font(.system(size: 36))
                        .foregroundColor(.white)
                }
                
                HStack {
                    DayWeatherContainer(dayName: "SUN", imageName: "cloud.sun.fill", degreesTemperature: 20)
                    DayWeatherContainer(dayName: "MON", imageName: "cloud.fill", degreesTemperature: 28)
                    DayWeatherContainer(dayName: "TUE", imageName: "wind.snow", degreesTemperature: 24)
                    DayWeatherContainer(dayName: "WED", imageName: "snow", degreesTemperature: 22)
                    DayWeatherContainer(dayName: "THU", imageName: "snow", degreesTemperature: 22)
                    DayWeatherContainer(dayName: "FRI", imageName: "sun.max.fill", degreesTemperature: 28)
                    DayWeatherContainer(dayName: "SAT", imageName: "sun.max.fill", degreesTemperature: 23)
                }
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct DayWeatherContainer: View {
    let dayName: String
    let imageName: String
    let degreesTemperature: Int
    var body: some View {
        VStack (spacing: 8) {
            Text(dayName)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            Text("\(degreesTemperature)°")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
        }
    }
}
