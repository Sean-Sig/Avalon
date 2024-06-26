import Foundation

enum RootTabItem: Int {
    case games
}

extension RootTabItem: Identifiable {
    var id: Int {
        rawValue
    }
}
