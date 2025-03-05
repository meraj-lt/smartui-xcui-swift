# smartui-xcui
XCUI Swift SDK for LTApp

[Smartui](https://www.lambdatest.com/visual-regression-testing) visual testing [XCUI Test](https://developer.apple.com/documentation/xctest)

Note: We dont support XCTest as no UI is rendered for XCTest. We support only XCUI Test

## Installation
Include the dependency in xcode package manager

1. Right click on any item in `Project Navigator`
2. Click `Add Packages...`
3. Search top right with this repo URL
4. Include package
5. Go to your project properties -> select XCUI test project target
6. Go to `Build Phases` tab
7. Under `Target Dependencies` press `+` and select `SmartXcui` dependency
8. Under `Link Library with Binaries` press `+` and select `SmartXcui` dependency

## Usage

This is an example test using the `screenshot` function.

```swift
import XCTest
import SmartXcui // importing the package

final class MyAppUITests: XCTestCase {
    func testExample() throws {
        // launch application
        let app = XCUIApplication()
        app.launch()

        // take screenshot
        let ltApp = LTApp()
        try ltApp.screenshot(name: "screenshotName")
    }
}
```

Running the test above normally will result in the following log:

```sh-session
[smartui:sdk] Smartui CLI is not running, disabling screenshots.
```
Running with App Automate will capture the screenshots as expected.

## Configuration

```swift
screenshot(name: String, customCropStatusBar: String = "", customCropNavigationBar: String = "")
```

- `name` (**required**) - The screenshot name; must be unique to each screenshot
- `Optional field` 
  - `customCropStatusBar`
  - `customCropNavigationBar`
