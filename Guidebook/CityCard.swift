//
//  CityCard.swift
//  Guidebook
//
//  Created by Anisha Pareek on 6/17/23.
//

import SwiftUI

struct CityCard: View {
    var city: City
    
    var body: some View {
        ZStack {
            Rectangle()
                .background (content: {
                    Image(city.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                })
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.4)
                .cornerRadius(15)
            
            VStack (alignment: .leading) {
                Text(city.name)
                    .font(.largeTitle)
                Spacer()
                Text(city.summary)
                    .multilineTextAlignment(.leading)
            }
            .foregroundColor(.white)
            .bold()
            .padding()
        }
        .ignoresSafeArea()
        .frame(height: 400)
//        .padding()
        
    }
}

struct CityCard_Previews: PreviewProvider {
    static var previews: some View {
        CityCard(city: City(name: "Tokyo", summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.", imageName: "tokyo", attractions: [Attraction]()))
    }
}
