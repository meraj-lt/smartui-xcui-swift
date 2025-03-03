
import XCTest
#if canImport(UIKit)
import UIKit
#endif
@testable import SmartXcui

final class smartui_xcuiTests: XCTestCase {

    func testCaptureScreenshot() {
        let ltApp = LTApp()
        let screenshot =  ltApp.screenshot(name: "abc")
        XCTAssertNotNil(screenshot, "Screenshot should not be nil")
    }
}
