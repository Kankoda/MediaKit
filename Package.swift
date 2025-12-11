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
            url: "https://github.com/Kankoda/MediaKit-Binaries/releases/download/0.4.0/MediaKit.zip",
            checksum: "3de89a571de5d2479381c20ca14267765a9601fb847f8c1806c775dd3fb1ca47"
        )
    ]
)
