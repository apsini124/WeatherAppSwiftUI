//
//  WelcomeView.swift
//  WeatherAppSwiftUI
//
//  Created by Priyadarsini, Anjali (Contractor) on 01/06/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    @State private var isNight = false

    var body: some View {
        VStack {
            BackgroundView(isNight:  $isNight)
            
            VStack(spacing: 20) {
                Text("Welcome to the Weather App")
                    .bold()
                    .font(.title)
                
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            
            
           
            // LocationButton from CoreLocationUI framework imported above, allows us to requestionLocation
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    var body: some View {
        
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .black: .blue, isNight ? .gray : Color("LightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}
