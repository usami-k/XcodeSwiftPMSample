// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "AppFeature",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "AppFeature", targets: ["AppFeature"]),
    ],
    dependencies: [
        // Local Packages
        .package(path: "../Core"),
    ],
    targets: [
        .target(
            name: "AppFeature",
            dependencies: [
                "Core"
            ]),
        .testTarget(
            name: "AppFeatureTests",
            dependencies: ["AppFeature"]),
    ]
)
