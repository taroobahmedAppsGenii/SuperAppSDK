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
            url: "https://github.com/taroobahmedAppsGenii/SuperAppSDK/releases/download/1.1.3/SuperAppSDK.xcframework.zip",
            checksum: "9956b4b4943c92ff3e6bedc14ec99b0aa34bea67d0b257a0d6619e2d5a7c6954"
        )
    ]
)
