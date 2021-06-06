//
//  MapCollegeView.swift
//  Colleges
//
//  Created by Sachin Kashyap on 05/06/21.
//

import SwiftUI
import MapKit

struct MapCollegeView: View {
    // @State helps modify values inside struct since struct immutable swiftui
    
    @State private var region = MKCoordinateRegion (
        center: CLLocationCoordinate2D(latitude: 43.73049242728258, longitude: -79.60924200051436),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapCollegeView_Previews: PreviewProvider {
    static var previews: some View {
        MapCollegeView()
    }
}
