import SwiftUI

struct GameDetailsScreen: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                GameDetailsHeaderView(gameDetailsHeaderModel: .gameDetailsHeaderMock)
                GameDetailsLocationView(gameDetailsLocationModel: .GameDetailsLocationMock)
                GamePlayersView()
            }
        }
    }
}

#if DEBUG
#Preview {
    GameDetailsScreen()
}
#endif
