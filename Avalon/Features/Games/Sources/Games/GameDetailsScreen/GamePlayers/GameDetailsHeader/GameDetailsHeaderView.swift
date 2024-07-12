import SwiftUI

struct GameDetailsHeaderView: View {
    var gameDetailsHeaderModel: GameDetailsHeaderModel

    var body: some View {
        VStack(spacing: 16) {
            Text("Game details")
            Spacer()
            VStack(spacing: 16) {
                ZStack {
                    Capsule()
                        .fill(gameDetailsHeaderModel.statusColor)
                        .frame(width: 150, height: 40)
                    Text(gameDetailsHeaderModel.statusText)
                }
                HStack(spacing: 8) {
                    Image(systemName: "calendar")
                    Text(gameDetailsHeaderModel.gameDate)
                        .font(.headline)
                }
                HStack(spacing: 8) {
                    Image(systemName: "clock")
                    Text(gameDetailsHeaderModel.gameTime)
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#if DEBUG
#Preview {
    GameDetailsHeaderView(gameDetailsHeaderModel: .gameDetailsHeaderMock)
}
#endif
