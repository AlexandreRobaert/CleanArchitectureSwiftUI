// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Data",
    platforms: [.macOS(.v14), .iOS(.v16)],
    products: [
        .library(name: "Data",targets: ["Data"]),
    ],
    dependencies: [.package(name: "Domain", path: "../Domain")],
    targets: [
        .target(name: "Data", dependencies: ["Domain"]),
        .testTarget(name: "DataTests", dependencies: ["Data"]),
    ]
)
