// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private extension Target.Dependency {
    static let commonUI: Self = .product(name: "CommonUI", package: "CommonUI")
}

let package = Package(
    name: "Games",
    defaultLocalization: "en",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Games",
            targets: ["Games"])
    ],
    dependencies: [
        .package(name: "CommonUI", path: "../../Foundation/CommonUI")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Games",
            dependencies: [
                .commonUI
            ]
        ),
        .testTarget(
            name: "GamesTests",
            dependencies: [
                "Games",
                .commonUI
            ]
        )
    ]
)
