import Foundation

public enum AvatarSize {
    case small
    case standard
    case hero

    public var size: CGFloat {
        switch self {
        case .small:
            return 24.0
        case .standard:
            return 40.0
        case .hero:
            return 72.0
        }
    }
}
