import Foundation
import SwiftUI
import MapKit

struct GameDetailsLocationModel: Identifiable {
    var id: String
    var address: String
    var latitude: Double
    var longitude: Double

    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }

    var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        )
    }
}

#if DEBUG
extension GameDetailsLocationModel {
    static let GameDetailsLocationMock = GameDetailsLocationModel(
        id: "game-player-1",
        address: "3850 Avalon Rd, Winter Garden, FL 34787",
        latitude: 28.502634,
        longitude: -81.641646
    )
}
#endif
