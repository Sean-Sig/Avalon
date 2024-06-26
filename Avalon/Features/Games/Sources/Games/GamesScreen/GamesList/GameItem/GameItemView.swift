import SwiftUI

struct GameItemView: View {
    var gameItemModel: GameItemModel
    var isLast: Bool = false

    var body: some View {
        VStack {
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 5) {
                    Text(gameItemModel.gameDate)
                    HStack(spacing: 0) {
                        Image(systemName: gameItemModel.iconName)
                        Text(gameItemModel.sportName)
                    }
                }
                Spacer()
                HStack(spacing: 0) {
                    Image(systemName: "person.2")
                    Text(gameItemModel.headCount)
                }
            }
            .padding()
            if !isLast {
                Divider()
                    .padding(.leading, 8)
            }
        }
    }
}

#if DEBUG
#Preview {
    GameItemView(gameItemModel: .gameItemFootballMock)
}
#endif
