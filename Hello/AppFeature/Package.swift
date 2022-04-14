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
        // Plugins
        .package(url: "https://github.com/usami-k/SwiftLintPlugin", branch: "main"),
    ],
    targets: [
        .target(
            name: "AppFeature",
            dependencies: [
                "Core",
            ],
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLintPlugin"),
            ]
        ),
        .testTarget(
            name: "AppFeatureTests",
            dependencies: ["AppFeature"]
        ),
    ]
)
