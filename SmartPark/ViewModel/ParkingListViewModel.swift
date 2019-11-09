//
//  ParkingListViewModel.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 11/2/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//

import Foundation
class ParkingListViewModel: ObservableObject {
    @Published var parkings = [ParkingViewModel]()
    
    init() {
        SmartParkService().getParkings{ parkings in
            if let parkings = parkings {
                self.parkings = parkings.map(ParkingViewModel.init)
            }
        }
    }
    
}
