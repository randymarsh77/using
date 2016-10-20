import PackageDescription

let package = Package(
    name: "Using",
    dependencies: [
	.Package(url: "https://www.github.com/randymarsh77/idisposable", majorVersion: 1)
	]
)
