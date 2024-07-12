import SwiftUI
import MapKit

struct GameDetailsLocationView: View {
    var gameDetailsLocationModel: GameDetailsLocationModel
    @State private var region: MKCoordinateRegion
    init(gameDetailsLocationModel: GameDetailsLocationModel) {
            self.gameDetailsLocationModel = gameDetailsLocationModel
            _region = State(initialValue: gameDetailsLocationModel.region)
        }

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("Location")
                .font(.headline)
            Divider()
            Map(
                coordinateRegion: $region,
                interactionModes: [],
                annotationItems: [gameDetailsLocationModel]) { location in
                MapMarker(coordinate: location.coordinate, tint: .red)
            }
            .frame(width: .infinity, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

            Text(gameDetailsLocationModel.address)
            Text("View in map >")
                .foregroundStyle(.blue)
            Divider()
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    GameDetailsLocationView(gameDetailsLocationModel: .GameDetailsLocationMock)
}
#endif
