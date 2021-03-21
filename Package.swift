// swift-tools-version:5.1
import PackageDescription

let package = Package(
	name: "Using",
	products: [
		.library(
			name: "Using",
			targets: ["Using"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/randymarsh77/idisposable", .branch("master")),
	],
	targets: [
		.target(
			name: "Using",
			dependencies: ["IDisposable"]
		),
		.testTarget(name: "UsingTests", dependencies: ["Using"]),
	]
)