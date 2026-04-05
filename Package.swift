// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TFLiteSPM",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "TensorFlowLite", targets: ["TensorFlowLite"])
    ],
    targets: [
        .binaryTarget(
            name: "TensorFlowLiteC",
            path: "Frameworks/TensorFlowLiteC.xcframework"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCMetal",
            path: "Frameworks/TensorFlowLiteCMetal.xcframework"
        ),
        .target(
            name: "TensorFlowLite",
            dependencies: ["TensorFlowLiteC", "TensorFlowLiteCMetal"],
            path: "Sources/TensorFlowLite"
        )
    ]
)
