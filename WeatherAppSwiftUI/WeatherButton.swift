//
//  WeatherButton.swift
//  WeatherAppSwiftUI
//
//  Created by Priyadarsini, Anjali (Contractor) on 31/05/23.
//
import SwiftUI
struct WeatherButton: View {
    var title: String
    var textColor: Color
    var background: Color
    
    var body: some View{
        Text(title).frame(width: 280,height: 50).background(background).foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold,design: .default)).cornerRadius(20)
    }
}

