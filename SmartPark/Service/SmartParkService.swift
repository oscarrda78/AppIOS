//
//  SmartParkService.swift
//  SmartPark
//
//  Created by Oscar Jonaiker Rojas Dueñas on 11/2/19.
//  Copyright © 2019 Oscar Jonaiker Rojas Dueñas. All rights reserved.
//

import Foundation
class SmartParkService {
    private let baseUrlString = "http://smartparking-jecosoft.azurewebsites.net"
    private let parkingsRelativeEndPointString = "/parkings"
    private let apiKey = "D7A8SD523SACX33C3ERxED"
    private func parkingsEndPointString() -> String {
        return "\(baseUrlString)\(parkingsRelativeEndPointString)"
    }
    
    func getParkings(completion: @escaping ([Parking]?) -> ()) {
        guard let url = URL(string: parkingsEndPointString()) else {
            fatalError("Invalid URL")
        }
        let request = NSMutableURLRequest(url: url)
        request.setValue("\(apiKey)", forHTTPHeaderField: "APIKey")
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content/Type")
        URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            
            let parkings = try? JSONDecoder().decode([Parking].self, from: data)
            DispatchQueue.main.async {
                completion(parkings)
            }
            if let error = error {
                print(error.localizedDescription)
            }
            
        }.resume()
        
        
    }
}
