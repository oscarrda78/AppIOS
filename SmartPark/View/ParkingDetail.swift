//
//  ParkingDetail.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 11/8/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//

import SwiftUI

struct ParkingDetail: View {
    var parking: ParkingViewModel
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
            CircleImage(image: Image("noimage"))
                .offset(x:0, y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text(parking.parkingName)
                    .font(.title)
                HStack(alignment: .top){
                    Text(parking.description)
                        .font(.subheadline)
                    Spacer()
                    Text("Numero de Espacios: \(parking.parkingSpaces)")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ParkingDetail_Previews: PreviewProvider {
    static var previews: some View {
        ParkingDetail(parking: ParkingViewModel(parking: Parking()))
    }
}
