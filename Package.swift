// swift-tools-version:6.1

import PackageDescription

let package = Package(
    name: "MediaKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "MediaKit",
            targets: ["MediaKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MediaKit",
            url: "https://github.com/Kankoda/MediaKit-Binaries/releases/download/0.1.0/MediaKit.zip",
            checksum: "a6130defa8376d8384feeaf88ac0c188dd4c131a2b5d5b3466949d055f3d96b2"
        )
    ]
)
