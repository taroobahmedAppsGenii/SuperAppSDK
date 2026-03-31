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
            url: "https://github.com/taroobahmedAppsGenii/SuperAppSDK/releases/download/1.0.8/SuperAppSDK.xcframework.zip",
            checksum: "ddbfc769820f5c0209463c63e52b51c622442b8d38a92fe3338cc32ffd726035"
        )
    ]
)
