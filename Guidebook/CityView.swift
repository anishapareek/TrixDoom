//
//  ContentView.swift
//  Guidebook
//
//  Created by Anisha Pareek on 6/16/23.
//

import SwiftUI

struct CityView: View {
    
    @State var cities: [City] = []
    var dataService = DataService()
    
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                VStack {
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 10)
                        }
                    }
                }
            }
            .padding(.horizontal)
//            .background(Color(.black))
        }
        .ignoresSafeArea()
        .onAppear {
            cities = dataService.getFileData()
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
