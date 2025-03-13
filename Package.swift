// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.iOS(.v11)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
      .package(url: "https://github.com/usespeakeasy/analytics-ios", branch: "master"),
      .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.23.0"),
    ],
    targets: [
        .target(
            name: "SegmentFirebase",
            dependencies: [
              .product(name: "Segment", package: "analytics-ios"),
              .product(name: "FirebaseAnalytics", package: "Firebase")
            ],
            path: "Segment-Firebase/Classes",
            publicHeadersPath: ""
        )
    ]
)
