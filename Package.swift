// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NerdzBase",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NerdzBase",
            targets: ["NerdzBase"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AliSoftware/Reusable.git", from: "4.1.0"),
        .package(url: "https://github.com/roberthein/TinyConstraints.git", from: "4.0.1"),
        .package(url: "https://github.com/realm/SwiftLint.git", from: "0.43.1"),
        .package(url: "https://github.com/nerdzlab/NerdzLibs", from: "0.43.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "NerdzBase",
            dependencies: ["Reusable"])
    ]
)
