import Foundation
import UIKit

public class GenericProvider {
    let httpClient: HttpClient
    
    public init() {
        self.httpClient = HttpClient()
    }

    func screenshot(screenshotDetails: inout [String: String]) throws-> String? {
        print("taking ss")
        let base64String = try ScreenshotController().takeScreenshot()
        print("ss taken")
        print(base64String)
        screenshotDetails["screenshot"] = base64String
        let response = try httpClient.postScreenshot(screenshotDetails: screenshotDetails)
        LTApp.log("Screenshoot taken: \(screenshotDetails[Constants.KeyConstants.screenshotName] ?? "")")
        return response
    }
    
    func realDeviceScreenshot(realDeviceScreenshotDetails: [String: Any]) throws-> String? {
        return try httpClient.postRealDeviceScreenshot(realDeviceScreenshotDetails: realDeviceScreenshotDetails)
    }
}
