// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FirstResponderModifier",
  platforms: [.iOS(.v13)],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "FirstResponderModifier",
      targets: [
        "FirstResponderModifier"
      ]
    )
  ],
  dependencies: [
    .package(
      name: "Introspect",
      url: "https://github.com/siteline/SwiftUI-Introspect.git",
      .upToNextMajor(from: "0.1.3")
    ),
    .package(
      name: "InterposeKit",
      url: "https://github.com/steipete/InterposeKit",
      .upToNextMajor(from: "0.0.2")
    )
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "FirstResponderModifier",
      dependencies: [
        "Introspect",
        "InterposeKit"
      ]
    ),
    .testTarget(
      name: "FirstResponderModifierTests",
      dependencies: [
        "FirstResponderModifier"]
    )
  ]
)