// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Example",
    defaultLocalization: "en",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "SwiftUIExample",
            targets: ["SwiftUIExampleModule"],
            bundleIdentifier: "dev.noppe.DebugMenu.SwiftUIExample",
            teamIdentifier: "FBQ6Z8AF3U",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        ),
        .iOSApplication(
            name: "UIKitExample",
            targets: ["UIKItExampleModule"],
            bundleIdentifier: "dev.noppe.DebugMenu.UIKitExample",
            teamIdentifier: "FBQ6Z8AF3U",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        ),
    ],
    dependencies: [
        .package(name: "DebugMenu", path: "../")
    ],
    targets: [
        .executableTarget(
            name: "SwiftUIExampleModule",
            dependencies: [
                .productItem(name: "DebugMenu", package: "DebugMenu", condition: nil),
                "Shared"
            ]
        ),
        .executableTarget(
            name: "UIKItExampleModule",
            dependencies: [
                .productItem(name: "DebugMenu", package: "DebugMenu", condition: nil),
                "Shared"
            ]
        ),
        .target(
            name: "Shared",
            dependencies: [
                .productItem(name: "DebugMenu", package: "DebugMenu", condition: nil)
            ]
        )
    ]
)
