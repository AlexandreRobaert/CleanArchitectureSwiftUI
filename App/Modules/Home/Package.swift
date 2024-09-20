// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Home",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "Home",
            targets: ["Home"]
        ),
    ],
    dependencies: [
        .package(name: "Domain", path: "../../../Domain"),
        .package(name: "Data", path: "../../../Data"),
        .package(name: "ViewStateSwiftUI", path: "../../../ViewStateSwiftUI")
    ],
    targets: [
        .target(
            name: "HomeDomain",
            dependencies: ["Domain",
                           "ViewStateSwiftUI"]
        ),
        .target(
            name: "Home",
            dependencies: ["HomeDomain",
                           "Domain",
                           "Data",
                           "ViewStateSwiftUI"],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "HomeTests",
            dependencies: ["Home"]
        )
    ]
)
