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
            url: "https://github.com/taroobahmedAppsGenii/SuperAppSDK/releases/download/1.0.9/SuperAppSDK.xcframework.zip",
            checksum: "953f3b84f9d13b8d77be6d9259ab60211b49ce9b04130c4d493a8faab811dcc9"
        )
    ]
)
