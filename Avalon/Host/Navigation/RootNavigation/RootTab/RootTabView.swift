import SwiftUI

struct RootTabView: View {

    let rootTabItems: [RootTabItem] = [.games]

    var body: some View {
        TabView {
            ForEach(rootTabItems, id: \.self) { tabItem in
                switch tabItem {
                case .games:
                    gamesRootTabView
                        .tag(tabItem)
                }
            }
        }
    }
}

private extension RootTabView {
    var gamesRootTabView: some View {
        GamesNavigationView()
            .tabItem {
                Label {
                    Text("Games")
                } icon: {
                    Image(systemName: "house")
                }
            }
    }
}

#if DEBUG
#Preview {
    RootTabView()
}
#endif
