//
//  User.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 11/8/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//

import SwiftUI
import CoreLocation

struct User {
    var id: Int
    var userName: String
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    init(){
        id=999
        userName = "Oscar Rojas"
        coordinates = Coordinates()
        coordinates.latitude = -12.1979395
        coordinates.longitude = -77.0076863
    }
}
