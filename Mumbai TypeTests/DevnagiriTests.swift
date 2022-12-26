//
//  Devnagiri.swift
//  Mumbai TypeTests
//
//  Created by Ashish on 25/12/22.
//

import XCTest
@testable import Mumbai_Type

final class DevnagiriTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_toDevnagiri_caseOfSecondLetter() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        // TODO: Write test cases with len 0, 1, 2, 3, 4, 10, 11
        let output = Mumbai_Type.toDevnagiri(alphabetic: "iqTHe")
        let expected = "इथे"
        XCTAssertEqual(output, expected)
        
        let output2 = Mumbai_Type.toDevnagiri(alphabetic: "iqThe")
        XCTAssertEqual(output2, expected)
    }
    
    func test_toDevnagiri_jodAkshar() {
        let output = Mumbai_Type.toDevnagiri(alphabetic: "aeqpqpl")
        let expected = "ॲप्पल"
        XCTAssertEqual(output, expected)
    }
    
    func test_toDevnagiri_caseOfThirdLetter() {
        let output = Mumbai_Type.toDevnagiri(alphabetic: "AoqregaNo")
        let expected = "ऑरेगानो"
        XCTAssertEqual(output, expected)
        
        let output2 = Mumbai_Type.toDevnagiri(alphabetic: "AOqregaNo")
        XCTAssertEqual(output2, expected)
        
        let output3 = Mumbai_Type.toDevnagiri(alphabetic: "AOQregaNo")
        XCTAssertEqual(output3, expected)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
