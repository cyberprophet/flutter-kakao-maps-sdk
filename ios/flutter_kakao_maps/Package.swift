// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_kakao_maps_sdk",
    platforms: [
        .iOS("13.0"),
    ],
    products: [
        .library(name: "flutter-kakao-maps-sdk", targets: ["flutter_kakao_maps_sdk"])
    ],
    dependencies: [
        .package(url: "https://github.com/kakao-mapsSDK/KakaoMapsSDK-SPM.git", from: "2.12.2"),
    ],
    targets: [
        .target(
            name: "flutter_kakao_maps_sdk",
            dependencies: [
                "KakaoMapsSDK-SPM"
            ],
            resources: []
        )
    ]
)