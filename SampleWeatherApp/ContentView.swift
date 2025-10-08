//
//  ContentView.swift
//  SampleWeatherApp
//
//  Created by Patrick Mcdaniel on 10/1/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var isDayTime: Bool = true
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [isDayTime ? Color(.blue) : Color(.black), isDayTime ? Color("lightBlue") : Color(.gray)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack (spacing: 40) {
                Text("London")
                    .font(.system(size: 32, weight: .regular))
                    .foregroundColor(.white)
                
                VStack (spacing: 4) {
                    Image(systemName: isDayTime ? "cloud.sun.fill" : "moon.stars")
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
                
                Button(action: {
                    isDayTime = !isDayTime
                }, label: {
                    Text("Change Day")
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
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
