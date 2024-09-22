// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "BCKeys",
    platforms: [
        .iOS(.v14),
        .macOS(.v13),
    ],
    products: [
        .library(
            name: "BCKeys",
            targets: ["BCKeys"]),
    ],
    dependencies: [
        .package(url: "https://github.com/WolfMcNally/WolfBase.git", from: "7.0.0"),
        .package(url: "https://github.com/BlockchainCommons/URKit.git", from: "15.0.0"),
        .package(url: "https://github.com/BlockchainCommons/BCSwiftCrypto.git", from: "6.0.0"),
        .package(url: "https://github.com/BlockchainCommons/BCSwiftRandom.git", from: "2.0.0"),
        .package(url: "https://github.com/BlockchainCommons/BCSwiftTags.git", from: "0.2.0"),
    ],
    targets: [
        .target(
            name: "BCKeys",
            dependencies: [
                "WolfBase",
                "URKit",
                .product(name: "BCCrypto", package: "BCSwiftCrypto"),
                .product(name: "BCRandom", package: "BCSwiftRandom"),
                .product(name: "BCTags", package: "BCSwiftTags"),
            ]
        ),
        .testTarget(
            name: "BCKeysTests",
            dependencies: ["BCKeys"]),
    ]
)
