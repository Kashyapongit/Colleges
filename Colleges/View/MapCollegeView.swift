//
//  MapCollegeView.swift
//  Colleges
//
//  Created by Sachin Kashyap on 05/06/21.
//

import SwiftUI
import MapKit

struct MapCollegeView: View {
    var coordinates: CLLocationCoordinate2D
    
    // @State helps modify values inside struct since struct immutable swiftui
    
    @State private var region = MKCoordinateRegion ()
    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinates)
            }
    }
    
    private func setRegion(_ coordinates: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
    }
}

struct MapCollegeView_Previews: PreviewProvider {
    static var previews: some View {
        MapCollegeView(coordinates: CLLocationCoordinate2D(latitude: 43.73049242728258, longitude: -79.60924200051436))
    }
}
