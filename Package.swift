// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Resolver",
    platforms: [
        .iOS(.v14),
        .macOS(.v10_14),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "Resolver",
            targets: ["Resolver"]),
        .library(
            name: "Resolver-Static",
            type: .static,
            targets: ["Resolver"]),
        .library(
            name: "Resolver-Dynamic",
            type: .dynamic,
            targets: ["Resolver"]),
    ],
    dependencies: [],
    targets: [
           .target(
               name: "Resolver",
               dependencies: [],
               exclude: ["Info.plist"],
               swiftSettings: [
                   .unsafeFlags(["-target", "x86_64-apple-ios-simulator"]),
               ]
           )
       ]
)
