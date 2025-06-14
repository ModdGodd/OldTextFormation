// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "OldTextFormation",
    platforms: [.macOS(.v10_12), .iOS(.v10)],
    products: [
        .library(name: "OldTextFormation", targets: ["OldTextFormation"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/TextStory", exact: "0.7.1"),
        .package(url: "https://github.com/ChimeHQ/Rearrange", exact: "1.5.2")
    ],
    targets: [
        .target(name: "TextFormation", dependencies: ["TextStory"]),
        .testTarget(name: "TextFormationTests", dependencies: ["OldTextFormation", "Rearrange"]),
    ]
)
