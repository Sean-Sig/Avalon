import Foundation

struct GamesListModel: Equatable {
    var games: [GameItemModel]
}

#if DEBUG
extension GamesListModel {
    static let gamesMock = GamesListModel(
        games: [
            .gameItemBasketballMock,
            .gameItemFootballMock
        ]
    )
}
#endif
