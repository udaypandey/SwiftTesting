//
//  HomescreenUITests.swift
//  HomescreenUITests
//
//  Created by Uday Pandey on 15/09/2022.
//

import XCTest

class HomescreenUITests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        XCUIDevice.shared.orientation = .portrait
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoginScreen() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launchEnvironment = ["uitesting": "login"]

        app.launch()

        XCTContext.runActivity(named: "Validate elements exist") { _  in
            let title = app.staticTexts["accessibility.id.title"].firstMatch
            XCTAssertTrue(title.exists)

            // This is fragile to test as this may change when locale changes, instead check
            // using the string keys
            XCTAssert(title.label == "Login")

            let dashbboardButton = app.buttons["accessibility.id.goToDashboard"].firstMatch
            XCTAssertTrue(dashbboardButton.exists)
            XCTAssertTrue(dashbboardButton.isEnabled)
        }
    }

    func testDashboardScreen() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launchEnvironment = ["uitesting": "dashboard"]

        app.launch()

        XCTContext.runActivity(named: "Validate elements exist") { _  in
            let title = app.staticTexts["accessibility.id.title"].firstMatch
            XCTAssertTrue(title.exists)

            // This is fragile to test as this may change when locale changes, instead check
            // using the string keys
            XCTAssert(title.label == "Dashboard")

            let billingButton = app.buttons["accessibility.id.goToBilling"].firstMatch
            XCTAssertTrue(billingButton.exists)
            XCTAssertTrue(billingButton.isEnabled)
        }
    }


    func testBillingScreen() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launchEnvironment = ["uitesting": "billing"]

        app.launch()

        XCTContext.runActivity(named: "Validate elements exist") { _  in
            let title = app.staticTexts["accessibility.id.title"].firstMatch
            XCTAssertTrue(title.exists)

            // This is fragile to test as this may change when locale changes, instead check
            // using the string keys
            XCTAssert(title.label == "Billing")

            let paymentButton = app.buttons["accessibility.id.goToPayment"].firstMatch
            XCTAssertTrue(paymentButton.exists)
            XCTAssertTrue(paymentButton.isEnabled)
        }
    }

    func testPaymentScreen() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launchEnvironment = ["uitesting": "payment"]

        app.launch()

        XCTContext.runActivity(named: "Validate elements exist") { _  in
            let title = app.staticTexts["accessibility.id.title"].firstMatch
            XCTAssertTrue(title.exists)

            // This is fragile to test as this may change when locale changes, instead check
            // using the string keys
            XCTAssert(title.label == "Payment")
        }
    }
}
