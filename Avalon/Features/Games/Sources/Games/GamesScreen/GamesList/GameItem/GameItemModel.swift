import Foundation

struct GameItemModel: Equatable {
    var id: String
    var sportName: String
    var iconName: String
    var headCount: String
    var gameDate: String
}

#if DEBUG
extension GameItemModel {
    static let gameItemBasketballMock = GameItemModel(
        id: "game-1",
        sportName: "Basketball",
        iconName: "basketball",
        headCount: "12/20",
        gameDate: "Thursday, June 27th"
    )
    static let gameItemFootballMock = GameItemModel(
        id: "game-2",
        sportName: "Football",
        iconName: "football",
        headCount: "10/32",
        gameDate: "Saturday, June 29th"
    )
}
#endif
