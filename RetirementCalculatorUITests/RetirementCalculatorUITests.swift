//
//  RetirementCalculatorUITests.swift
//  RetirementCalculatorUITests
//
//  Created by Ram Jondhale on 28/11/23.
//

import XCTest

final class RetirementCalculatorUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {

    }

    func testExample() throws {
        XCTContext.runActivity(named: "screenshot") { activity in
            let app = XCUIApplication()
            app.launch()

            app.textFields["Monthly investments"].tap()
            let key = app.keys["5"]
            key.tap()
            let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key2.tap()
            key2.tap()
            key2.tap()

            let yourCurrentAgeTextField = app.textFields["Your current age"]
            yourCurrentAgeTextField.tap()
            let key3 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key3.tap()
            let key4 = app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key4.tap()

            let yourPlannedRetirementAgeTextField = app.textFields["Your planned retirement age"]
            yourPlannedRetirementAgeTextField.tap()

            let key5 = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key5.tap()
            let key6 = app.keys["0"]
            key6.tap()

            let averageInterestRateOfInvestmentsTextField = app.textFields["Average interest rate of investments"]
            averageInterestRateOfInvestmentsTextField.tap()

            let key7 = app/*@START_MENU_TOKEN@*/.keys["8"]/*[[".keyboards.keys[\"8\"]",".keys[\"8\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key7.tap()

            app.textFields["Current savings"].tap()
            key5.tap()
            key2.tap()
            key2.tap()
            key2.tap()
            key2.tap()
            key2.tap()
            app/*@START_MENU_TOKEN@*/.staticTexts["Calculate retirement amount"]/*[[".buttons[\"Calculate retirement amount\"].staticTexts[\"Calculate retirement amount\"]",".staticTexts[\"Calculate retirement amount\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

            let resultLabel = app.staticTexts.element(matching: .any, identifier: "ResultLabelA11yID")
            let resultText = "If you save $5000.0 every month for 17 years, and invest that money plus your current investment of $400000.0 at a 8.0% annual interest rate, you will have $2633358500797.138 by the time you are 40"
            XCTAssertEqual(resultLabel.label, resultText)
        }
    }
}
