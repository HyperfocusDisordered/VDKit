// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "FoundationExtensions",
	platforms: [
        .iOS(.v11), .macOS(.v10_10), .watchOS(.v3), .tvOS(.v9),
	],
	products: [
		.library(name: "FoundationExtensions", targets: ["FoundationExtensions"]),
		.library(name: "VDBuilders", targets: ["VDBuilders"]),
		.library(name: "VDCommon", targets: ["VDCommon"]),
		.library(name: "VDDates", targets: ["VDDates"]),
		.library(name: "VDOptional", targets: ["VDOptional"]),
		.library(name: "VDMirror", targets: ["VDMirror"]),
		.library(name: "VDKitRuntime", targets: ["VDKitRuntime"])
	],
	dependencies: [
    ],
	targets: [
		.target(name: "VDKitRuntimeObjc", dependencies: []),
		.target(name: "VDKitRuntime", dependencies: ["VDKitRuntimeObjc"]),
		.target(name: "VDBuilders", dependencies: []),
		.target(name: "VDCommon", dependencies: ["VDBuilders"]),
		.target(name: "VDDates", dependencies: []),
		.target(name: "VDOptional", dependencies: []),
		.target(name: "VDMirror", dependencies: []),
		.target(name: "FoundationExtensions", dependencies: ["VDKitRuntime", "VDBuilders", "VDCommon", "VDDates", "VDOptional", "VDMirror"]),
	]
)
