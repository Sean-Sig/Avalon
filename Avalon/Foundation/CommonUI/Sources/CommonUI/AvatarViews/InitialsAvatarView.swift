import SwiftUI

public struct InitialsAvatarView: View {
    let label: String
    let size: AvatarSize

    public init(_ label: String, size: AvatarSize = .standard) {
        self.label = label
        self.size = size
    }

    public var body: some View {
        ZStack(alignment: .center) {
            Circle()
                .frame(width: size.size, height: size.size)
                .foregroundColor(.black)
            Text(String(label.prefix(2)))
                .foregroundColor(.white)
        }
        .clipShape(Circle())
    }
}

#if DEBUG
#Preview {
    VStack {
        InitialsAvatarView("JV", size: .small)
        InitialsAvatarView("JV", size: .standard)
        InitialsAvatarView("JV", size: .hero)
    }
}
#endif
