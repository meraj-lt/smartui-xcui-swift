import Foundation
import UIKit
import XCTest

public class ScreenshotController: UIViewController {
  // swiftlint:disable:next unneeded_override
  public override func viewDidLoad() {
    super.viewDidLoad()
  }

  public func takeScreenshot() throws -> String {
    guard let imageData = XCUIScreen.main.screenshot().image.pngData() else {
        throw LTAppError.screenshotError("Failed to take screenshot")
    }
    return imageData.base64EncodedString()
  }
}
