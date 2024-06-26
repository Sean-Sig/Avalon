import SwiftUI

struct GamesListView: View {
    var weeksListModel: GamesListModel

    var body: some View {
        List {
            ForEach(weeksListModel.games, id: \.id) { row in
                GameItemView(
                    gameItemModel: row,
                    isLast: row.id == weeksListModel.games.last?.id
                )
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            }
        }
        .listStyle(.plain)
    }
}

#if DEBUG
#Preview {
    GamesListView(weeksListModel: .gamesMock)
}
#endif
