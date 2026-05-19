import XCTest

class ScreenshotTests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - iPhone 6.9" Screenshots (1320x2868)
    
    func test_iPhone69_HomeScreen() {
        captureScreenshot(name: "01_Home", path: "iPhone_69_1320x2868")
    }
    
    func test_iPhone69_ChallengesScreen() {
        app.tabBars.buttons["Challenges"].tap()
        captureScreenshot(name: "02_Challenges", path: "iPhone_69_1320x2868")
    }
    
    func test_iPhone69_MirrorScreen() {
        app.tabBars.buttons["Mirror"].tap()
        captureScreenshot(name: "03_Mirror", path: "iPhone_69_1320x2868")
    }
    
    func test_iPhone69_DreamsScreen() {
        app.tabBars.buttons["Dreams"].tap()
        captureScreenshot(name: "04_Dreams", path: "iPhone_69_1320x2868")
    }
    
    func test_iPhone69_ProfileScreen() {
        app.tabBars.buttons["Profile"].tap()
        captureScreenshot(name: "05_Profile", path: "iPhone_69_1320x2868")
    }
    
    // MARK: - iPad Pro 13" Screenshots (2048x2732)
    
    func test_iPad13_HomeScreen() {
        app.tabBars.buttons["Home"].tap()
        captureScreenshot(name: "01_iPad_Home", path: "iPad_13_2048x2732")
    }
    
    func test_iPad13_ChallengesScreen() {
        app.tabBars.buttons["Challenges"].tap()
        captureScreenshot(name: "02_iPad_Challenges", path: "iPad_13_2048x2732")
    }
    
    func test_iPad13_MirrorScreen() {
        app.tabBars.buttons["Mirror"].tap()
        captureScreenshot(name: "03_iPad_Mirror", path: "iPad_13_2048x2732")
    }
    
    func test_iPad13_DreamsScreen() {
        app.tabBars.buttons["Dreams"].tap()
        captureScreenshot(name: "04_iPad_Dreams", path: "iPad_13_2048x2732")
    }
    
    func test_iPad13_ProfileScreen() {
        app.tabBars.buttons["Profile"].tap()
        captureScreenshot(name: "05_iPad_Profile", path: "iPad_13_2048x2732")
    }
    
    // MARK: - Helper Methods
    
    private func captureScreenshot(name: String, path: String) {
        let fullPath = "/tmp/Screenshots/\(path)/\(name).png"
        
        // Create directory if needed
        let fileManager = FileManager.default
        let directory = (fullPath as NSString).deletingLastPathComponent
        try? fileManager.createDirectory(atPath: directory, withIntermediateDirectories: true)
        
        // Take screenshot and get PNG data using UIImage standard method
        let screenshot = XCUIScreen.main.screenshot()
        let image = screenshot.image
        guard let pngData = image.pngData() else { return }
        try? pngData.write(to: URL(fileURLWithPath: fullPath))
        
        // Small delay to ensure next tab transition is visible
        Thread.sleep(forTimeInterval: 0.5)
    }
}