//
//  ParkingViewModel.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 11/2/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//

import Foundation
import CoreLocation

struct ParkingViewModel: Identifiable {
    var id = UUID()
    
    var parking: Parking
    
    var parkingName: String {
        return self.parking.parkingName
    }
    var address: String {
        return self.parking.address
    }
    var description: String {
        return self.parking.description
    }
    var parkingSpaces: Int {
        return self.parking.parkingSpaces
    }
    var coordinates: Coordinates {
        return self.parking.coordinates
    }
    var locationCoordinate: CLLocationCoordinate2D {
        return self.parking.locationCoordinate
    }
    
    init(parking: Parking) {
        self.parking = parking
    }
}
