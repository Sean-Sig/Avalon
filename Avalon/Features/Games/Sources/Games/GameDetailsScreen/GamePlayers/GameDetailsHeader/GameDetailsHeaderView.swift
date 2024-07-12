import SwiftUI

struct GameDetailsHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Game details")
            VStack(spacing: 16) {
                ZStack {
                    Capsule()
                        .fill(.green)
                        .frame(width: 200, height: 50)
                    Text("Confirmed")
                }
                Text("Thurs, 07/11/2024")
                    .font(.headline)
                Text("9:00 PM")
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#if DEBUG
#Preview {
    GameDetailsHeaderView()
}
#endif
