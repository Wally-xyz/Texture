// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Texture",
    products: [
        .library(
            name: "AsyncDisplayKit",
            targets: ["AsyncDisplayKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/shimastripe/Texture.git", from: .init(3, 1, 1)),
    ],
    targets: [
        .target(
            name: "AsyncDisplayKit",
            dependencies: [
                .product(name: "AsyncDisplayKit", package: "Texture"),
            ]),
    ]
)
