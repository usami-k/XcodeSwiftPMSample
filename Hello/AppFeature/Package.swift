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
        // https://github.com/juozasvalancius/ExampleSPMProjectWithSwiftLint
        .binaryTarget(
            name: "SwiftLintBinary",
            url: "https://github.com/juozasvalancius/SwiftLint/releases/download/spm-accommodation/SwiftLintBinary-macos.artifactbundle.zip",
            checksum: "cdc36c26225fba80efc3ac2e67c2e3c3f54937145869ea5dbcaa234e57fc3724"
        ),
        .plugin(
            name: "SwiftLintXcode",
            capability: .buildTool(),
            dependencies: ["SwiftLintBinary"]
        ),
        .target(
            name: "AppFeature",
            dependencies: [
                "Core"
            ],
            plugins: ["SwiftLintXcode"]),
        .testTarget(
            name: "AppFeatureTests",
            dependencies: ["AppFeature"]),
    ]
)
