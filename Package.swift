// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SuperAppSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SuperAppSDK",
            targets: ["SuperAppSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "SuperAppSDK",
            url: "https://github.com/taroobahmedAppsGenii/SuperAppSDK/releases/download/1.0.7/SuperAppSDK.xcframework.zip",
            checksum: "7e90f497bfc337fc2f4150e3446c6382d4de72fe9f4520b27b77637e0d82eaf5"
        )
    ]
)
