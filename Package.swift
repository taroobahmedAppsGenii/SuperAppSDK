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
            url: "https://github.com/taroobahmedAppsGenii/SuperAppSDK/releases/download/1.0.10/SuperAppSDK.xcframework.zip",
            checksum: "82e48f85e9f05b40ff02b7b0d451a688d476c50c7537f7ca24bb9bcce600dbed"
        )
    ]
)
