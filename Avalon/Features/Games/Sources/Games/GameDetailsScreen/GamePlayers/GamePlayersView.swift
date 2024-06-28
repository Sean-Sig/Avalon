import SwiftUI

struct GamePlayersView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Players")
                .font(.headline)
                .padding(.leading)
            GamePlayersListView(gamePlayersListModel: .gameplayersMock)
        }
    }
}

#if DEBUG
#Preview {
    GamePlayersView()
}
#endif
