// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "Smartui XCUI Swift",
    products: [
        .library(
            name: "SmartXcui",
            targets: ["SmartXcui"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SmartXcui",
            dependencies: []
        ),
        .testTarget(
            name: "smartui-xcuiTests",
            dependencies: ["SmartXcui"]),
    ]
)
