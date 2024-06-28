import SwiftUI

struct GameDetailsScreen: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
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
