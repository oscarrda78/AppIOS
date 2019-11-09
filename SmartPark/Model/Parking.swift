//
//  Parking.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 11/1/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//
import SwiftUI
import CoreLocation


struct Parking: Hashable, Codable{
    var parkingId: Int
    var parkingName: String
    var address: String
    var description: String
    var parkingSpaces: Int
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    init(){
        parkingId = 0
        parkingName = "Unnamed"
        address = "Unknown"
        description = "UnKnown"
        parkingSpaces = 0
        coordinates = Coordinates()
    }

}



