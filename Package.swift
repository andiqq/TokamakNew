// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "TokamakNew",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "TokamakNew", targets: ["TokamakNew"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.6.1")
    ],
    targets: [
        .target(
            name: "TokamakNew",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ],
        resources: [
            .process("pictures")
        ]),
        .testTarget(
            name: "TokamakNewTests",
            dependencies: ["TokamakNew"]),
    ]
)
