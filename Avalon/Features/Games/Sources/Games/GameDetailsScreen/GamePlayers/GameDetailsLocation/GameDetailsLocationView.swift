import SwiftUI
import MapKit

struct GameDetailsLocationView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 28.502634, longitude: -81.641646),
        span: MKCoordinateSpan(latitudeDelta: 0.100, longitudeDelta: 0.100))

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("Location")
                .font(.headline)
            Divider()
            Map(coordinateRegion: $region)
                .frame(width: .infinity, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
            Text("3850 Avalon Rd, Winter Garden, FL 34787")
            Text("View in map >")
                .foregroundStyle(.blue)
            Divider()
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    GameDetailsLocationView()
}
#endif
