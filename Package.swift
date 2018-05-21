// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "fragments-service",
    dependencies: [
        // Package with core swift extensions
        .package(url: "git@github.com:fuzed-innovations/swifty-extensions.git", from: "1.0.0"),
        // Package with core swift microservice code
        .package(url: "git@github.com:fuzed-innovations/swifty-microservice.git", from: "2.0.0-rc.2"),
        // Package for Async handling
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "4.0.0"),
        // Package for networking
        .package(url: "git@github.com:fuzed-innovations/networking-queue.git", .upToNextMinor(from: "3.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "fragments-service",
            dependencies: ["SwiftyMicroservice",
                           "PromiseKit",
                           "SwiftyExtensionsFoundation",
                           "SwiftyExtensionsCoreLocation",
                           "SwiftyExtensionsJSON",
                           "SwiftyExtensionsPromiseKit",
                           "SwiftyExtensionsPromiseKitJSON",
                           "NetworkingQueue"]),
    ]
)
