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
            url: "https://github.com/taroobahmedAppsGenii/SuperAppSDK/releases/download/1.0.4/SuperAppSDK.xcframework.zip",
            checksum: "9d9b8968f9016b49c350e3322c507bf60457d5ba4bd1a716146c62ad039e48f0"
        )
    ]
)
