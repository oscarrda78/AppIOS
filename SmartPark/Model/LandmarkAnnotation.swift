//
//  LandmarkAnnotation.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 11/8/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//

import CoreLocation
import MapKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
    let id: String
    let title: String?
    let coordinate: CLLocationCoordinate2D

    init(id: String, title: String, coordinate: CLLocationCoordinate2D) {
        self.id = id
        self.title = title
        self.coordinate = coordinate
    }
}
