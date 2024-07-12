import Foundation
import SwiftUI

struct GameDetailsHeaderModel: Equatable {
    var id: String
    var statusColor: Color
    var statusText: String
    var gameDate: String
    var gameTime: String
}

#if DEBUG
extension GameDetailsHeaderModel {
    static let gameDetailsHeaderMock = GameDetailsHeaderModel(
        id: "game-player-1",
        statusColor: .green,
        statusText: "Confirmed",
        gameDate: "Thurs, 07/11/2024",
        gameTime: "9:00 PM"
    )
}
#endif
