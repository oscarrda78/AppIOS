//
//  MapView.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 11/1/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var parkings = ParkingListViewModel()
    var user = User()
    func makeUIView(context: Context) -> MKMapView {
         MKMapView(frame: .zero)
        
    }
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        guard let coordinates = view.annotation?.coordinate else
        {
            return
        }
        let span = mapView.region.span
        let region = MKCoordinateRegion(center: coordinates, span: span)
        mapView.setRegion(region, animated: true)
    }
    private func updateAnnotations(_ view: MKMapView) {
        let span = MKCoordinateSpan(latitudeDelta: 0.008, longitudeDelta: 0.008)
        let region = MKCoordinateRegion(center: user.locationCoordinate, span: span)
        view.removeAnnotations(view.annotations)
        
        
        
        let parkingAnnotations =  parkings.parkings.map{
            LandmarkAnnotation(id: "0", title: $0.parkingName, coordinate: $0.locationCoordinate)
        }
        print(parkings.parkings.count)
       let userAnnotation = LandmarkAnnotation(id: String(user.id), title: user.userName, coordinate: user.locationCoordinate)
        view.addAnnotation(userAnnotation)
        view.addAnnotation(LandmarkAnnotation(id: "0", title: "Plaza Vea", coordinate: CLLocationCoordinate2D(latitude: -12.196825, longitude: -77.011505)))
        
        view.addAnnotations(parkingAnnotations)
        view.setRegion(region, animated: false)
    }
   

    
    func updateUIView(_ view: MKMapView, context: Context) {
        updateAnnotations(view)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
