// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ABCMpc",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ABCMpc",
            targets: ["ABCMpc"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ABCMpc",
            dependencies: ["ABCMpcCore"],
            path: "Sources/ABCMpc"),
        .binaryTarget(
            name: "ABCMpcCore",
            path: "Sources/ABCMpc/libs/ABCMpcCore.xcframework")
    ]
)
