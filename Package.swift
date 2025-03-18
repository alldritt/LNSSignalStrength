// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LNSSignalStrength",
    platforms: [
        .macOS(.v11), .iOS(.v14), .tvOS(.v13), .watchOS(.v7)
    ],
    products: [
        .library(
            name: "LNSSignalStrength",
            targets: ["LNSSignalStrength"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LNSSignalStrength",
            dependencies: []),
        .testTarget(
            name: "LNSSignalStrengthTests",
            dependencies: ["LNSSignalStrength"]),
    ]
)
