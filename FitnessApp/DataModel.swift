//
//  DataModel.swift
//  FitnessApp
//
//  Created by Naman Alagh on 14/02/23.
//

import Foundation

struct GeoLocation {
    var latitude: Double
    var longitude: Double
    var altitude: Double
}

struct Place {
    var id: UUID
    var title: String
    var location: GeoLocation
    var images: [String]
    var rating: Int
    var likes: UInt
}

struct City {
    var name: String
    var thumbnail: String
    var places: [Place]
}

class DataModel {
    var cities: [City]
    
    init() {
        let places = [Place(id: UUID(), title: "Central Park", location: GeoLocation(latitude: 0.0, longitude: 0.0, altitude: 0.0), images: ["","",""], rating: 0, likes: 0),
                      Place(id: UUID(), title: "Lodhi Park", location: GeoLocation(latitude: 0.0, longitude: 0.0, altitude: 0.0), images: ["","",""], rating: 0, likes: 0)
        ]
        
        let city = City(name: "New Delhi", thumbnail: "Del", places: places)
        let city1 = City(name: "Hyderabad", thumbnail: "Del", places: places)
        cities = [city,city1]
    }
    
    func getCities()->[City] {
        return cities
    }
    
    func getCity(by index: Int)->City {
        return cities[index]
    }
}
