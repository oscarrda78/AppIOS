//
//  ContentView.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 10/31/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var parkings = ParkingListViewModel()
    var body: some View{
        MapView()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
