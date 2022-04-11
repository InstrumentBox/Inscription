# Installation

Read how to install ``Inscription`` library and link it to your projects.

## Swift Package Manager

The ``Inscription`` library is available via [Swift Package Manager](https://swift.org/package-manager/).

##### Linking to an Xcode project

- Go to `File` -> `Add Packages...` 
- Type package URL [https://github.com/InstrumentBox/Inscription](https://github.com/InstrumentBox/Inscription)
- Select `Inscription` package, specify dependency rule, and click `Add Package`
- Select `Inscription` target and click `Add Package`

##### Linking to a Swift package

Add the following lines to your `Package.swift` file:

```swift
let package = Package(
   ...,
   dependencies: [
      ...,
      .package(url: "https://github.com/InstrumentBox/Inscription", .upToNextMajor(from: "1.0.1")
   ],
   ...
)
```

## Git Submodule

- Open Terminal and `cd` to your project top-level directory

- Add ``Inscription`` package as git [submodule](https://git-scm.com/docs/git-submodule) by running 
the following command

```sh
$ git submodule add https://github.com/InstrumentBox/Inscription.git
```

- Go to Xcode and select `File` -> `Add Packages...`
- Click `Add Local...`
- Select `Inscription` directory
- Next, select your application project in the Project Navigator (blue project icon) to navigate 
  to the target configuration window and select the application target under the "Targets" heading 
  in the sidebar.
- In the tab bar at the top of that window open the "General" panel.
- Click on the `+` button under the "Frameworks, Libraries, and Embedded Content" section.
- Select ``Inscription`` library

## Manual Installation

If you prefer not to use Swift Package Manager or git submodules, you can  integrate  ``Inscription`` 
into your project manually.

- Download the repository at [https://github.com/InstrumentBox/Inscription](https://github.com/InstrumentBox/Inscription)
- Unzip archive
- Copy all `*.swift` files from `Sources/Inscription` to your project
- Go to Xcode and select `File` -> `Add Files to "<Project Name>"...`
- Select recently copied files

## Carthage

Carthage is not supported. From now on, Swift Package Manager should be the preferred dependency 
management tool.

## CocoaPods

CocoaPods are not supported. From now on, Swift Package Manager should be the preferred dependency 
management tool.
