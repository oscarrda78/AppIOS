//
//  Coordinates.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 11/8/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//

import Foundation
struct Coordinates: Hashable, Codable{
    var latitude: Double
    var longitude: Double
    init(){
        latitude = 0.0
        longitude = 0.0
    }
}
