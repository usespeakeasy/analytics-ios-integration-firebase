// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.iOS(.v11)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
      .package(url: "https://github.com/usespeakeasy/analytics-ios", from: "1.0.0"),
      .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "11.6.0"),
    ],
    targets: [
        .target(
            name: "SegmentFirebase",
            dependencies: [
              .product(name: "Segment", package: "analytics-ios"),
              .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk")
            ],
            path: "Segment-Firebase/Classes",
            publicHeadersPath: ""
        )
    ]
)
