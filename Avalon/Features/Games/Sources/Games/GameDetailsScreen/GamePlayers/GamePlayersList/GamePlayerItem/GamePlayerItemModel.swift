import Foundation
import SwiftUI

struct GamePlayerItemModel: Equatable {
    var id: String
    var fullName: String
    var initials: String
    var status: String
    var statusIcon: String
    var iconColor: Color
}

#if DEBUG
extension GamePlayerItemModel {
    static let gamePlayerConfirmedMock = GamePlayerItemModel(
        id: "game-player-1",
        fullName: "Jason Kidd",
        initials: "JK",
        status: "Confirmed",
        statusIcon: "checkmark",
        iconColor: .green
    )
    static let gamePlayerPendingMock = GamePlayerItemModel(
        id: "game-player-2",
        fullName: "Kevin Bacon",
        initials: "KB",
        status: "Pending",
        statusIcon: "clock",
        iconColor: .black
    )
}
#endif
