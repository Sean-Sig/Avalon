import SwiftUI
import CommonUI

struct GamePlayerItemView: View {
    var gamePlayerItemModel: GamePlayerItemModel

    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 8) {
                InitialsAvatarView(gamePlayerItemModel.initials)
                VStack(alignment: .leading, spacing: 2) {
                    Text(gamePlayerItemModel.fullName)
                    Text(gamePlayerItemModel.status)
                        .font(.caption)
                }
                Spacer()
                Image(systemName: gamePlayerItemModel.statusIcon)
                    .foregroundColor(gamePlayerItemModel.iconColor)
            }
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    GamePlayerItemView(gamePlayerItemModel: .gamePlayerPendingMock)
}
#endif
