// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ViewStateSwiftUI",
    platforms: [.iOS(.v16), .macOS(.v14)],
    products: [
        .library(name: "ViewStateSwiftUI", targets: ["ViewStateSwiftUI"])
    ],
    targets: [
        .target(name: "ViewStateSwiftUI")
    ]
)
