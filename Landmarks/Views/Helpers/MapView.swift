//
//  MapView.swift
//  Landmarks
//
//  Created by 전태구 on 2021/12/29.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(coordinate)
                }
        }
    }
    
    private func setRegion(_ coodinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coodinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -166.166_868))
    }
}
