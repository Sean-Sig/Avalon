import Foundation

struct GamePlayersListModel: Equatable {
    var players: [GamePlayerItemModel]
}

#if DEBUG
extension GamePlayersListModel {
    static let gameplayersMock = GamePlayersListModel(
        players: [
            .gamePlayerPendingMock,
            .gamePlayerConfirmedMock
        ]
    )
}
#endif
