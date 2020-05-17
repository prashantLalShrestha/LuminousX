// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LuminousX",
    platforms: [ .iOS(.v11)],
    products: [
        .library(
            name: "LuminousX",
            targets: ["LuminousX"]),
    ],
    dependencies: [
         .package(url: "https://github.com/prashantLalShrestha/DeviceX.git", from: "1.1.3"),
    ],
    targets: [
        .target(
            name: "LuminousX",
            dependencies: ["DeviceX"],
            path: "Sources"),
        .testTarget(
            name: "LuminousXTests",
            dependencies: ["LuminousX", "DeviceX"],
            path: "LuminousXTests"),
    ]
)
