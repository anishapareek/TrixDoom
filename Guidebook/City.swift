//
//  City.swift
//  Guidebook
//
//  Created by Anisha Pareek on 6/16/23.
//

import Foundation


struct City: Identifiable, Decodable {
    
    let id = UUID()
    
    var name: String
    var summary: String
    var imageName: String
    
    
    var attractions: [Attraction]
}
