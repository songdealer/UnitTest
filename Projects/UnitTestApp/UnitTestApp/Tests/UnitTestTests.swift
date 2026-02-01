//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by user on 1/30/26.
//

import XCTest

@testable import UnitTest

final class UnitTestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let feature = ContentFeature()
        
        let initialCount = feature.count
        feature.increaseCount()
        XCTAssertEqual(feature.count, initialCount + 1, "카운트가 1 증가해야 합니다.")
        
        feature.decreaseCount()
        XCTAssertEqual(feature.count, initialCount, "카운트가 0 되어야 합니다.")
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
