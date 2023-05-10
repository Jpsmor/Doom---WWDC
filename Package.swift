// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "D.o.o.m. - Defending Our Orbit from Menace",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "D.o.o.m. - Defending Our Orbit from Menace",
            targets: ["AppModule"],
            bundleIdentifier: "com.jpsm.Doom---WWDC",
            teamIdentifier: "QJZZNXUZ63",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .camera),
            accentColor: .presetColor(.cyan),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            appCategory: .arcadeGames
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
