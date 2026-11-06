// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
// 模板文件：由 submit_cocoapods.sh 根据实际版本号生成 Package.swift，请勿直接修改生成的 Package.swift

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
            url: "https://github.com/libpag/pag-mac/releases/download/4.4.75/libpag_4.4.75_macOS_arm64_x86_64.zip",
            checksum: "3a6a2c5a160ee45ce1eef629a3f215466e9d50198ea9b07a00f4c7f3275e48fc")
    ]
)
