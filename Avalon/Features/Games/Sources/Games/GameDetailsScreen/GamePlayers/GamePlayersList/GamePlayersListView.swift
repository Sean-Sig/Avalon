import SwiftUI

struct GamePlayersListView: View {
    var gamePlayersListModel: GamePlayersListModel

    var body: some View {
        VStack(spacing: 0) {
            ForEach(gamePlayersListModel.players, id: \.id) { row in
                GamePlayerItemView(
                    gamePlayerItemModel: row
                )
            }
        }
    }
}

#if DEBUG
#Preview {
    GamePlayersListView(gamePlayersListModel: .gameplayersMock)
}
#endif
