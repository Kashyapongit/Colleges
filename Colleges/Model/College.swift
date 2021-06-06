//
//  College.swift
//  Colleges
//
//  Created by Sachin Kashyap on 06/06/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct College: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var campus: String
    var description: String
    var intake: String
    var link: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    // private only because we only use to create a public computed property
    var locationcoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    // struct created to break the coordinates object inside json file
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
