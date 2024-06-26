import SwiftUI

public struct GamesScreen: View {

    public init() {}

    public var body: some View {
        VStack(spacing: 0) {
            GamesListView(weeksListModel: .gamesMock)
        }
        .navigationTitle("Games")
    }
}

#if DEBUG
#Preview {
    GamesScreen()
}
#endif
