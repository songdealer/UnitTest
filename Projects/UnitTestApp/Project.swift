import ProjectDescription

let project = Project(
    name: "UnitTestApp",
    targets: [
        .target(
            name: "UnitTest",
            destinations: .iOS,
            product: .app,
            bundleId: "com.MinG.UnitTest",
            infoPlist: .extendingDefault(
                   with: [
                       "UILaunchScreen": [:],
                       "UIApplicationSceneManifest": [
                           "UIApplicationSupportsMultipleScenes": false
                       ]
                   ]
               ),
            buildableFolders: [
                "UnitTestApp/Sources",
                "UnitTestApp/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "UnitTestTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.MinG.UnitTestTests",
            infoPlist: .default,
            buildableFolders: [
                "UnitTestApp/Tests"
            ],
            dependencies: [.target(name: "UnitTest")]
        ),
    ]
)
