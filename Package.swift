// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "SwiftSoup",
    platforms: [.macOS(.v10_15), .iOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "SwiftSoup", targets: ["SwiftSoup"])
    ],
    targets: [
        .target(name: "SwiftSoup",
                path: "Sources",
                exclude: [
                    "Info.plist",
                    "InfoMac.plist",
                    "InfotvOS.plist",
                    "InfoWatchOS.plist",
                ],
                resources: [.copy("PrivacyInfo.xcprivacy")]),
        .testTarget(name: "SwiftSoupTests", dependencies: ["SwiftSoup"])
    ]
)


