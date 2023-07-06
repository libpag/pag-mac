// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libpag",
    platforms: [.macOS(.v10_13)],
    products: [
        .library(
            name: "libpag",
            targets: ["libpag"]),
    ],
    targets: [
        .binaryTarget(
            name: "libpag",
            path: "framework/libpag.xcframework")
    ]
)
