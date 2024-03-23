//
//  SimpleiOSSwiftAppTests.swift
//  SimpleiOSSwiftAppTests
//
//  Created by Asif Alli on 2024-03-19.
//

import XCTest
@testable import SimpleiOSSwiftApp

final class SimpleiOSSwiftAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFib() throws {
        let fib = Fib()

        // Call the method on the instance
        XCTAssertNotNil(fib)
    }

    func testFib0Equals0() throws {
        let fibValue = Fib.doFib(upTo: 0)

        // Call the method on the instance
        //XCTAssertNotNil(fib)
        XCTAssertEqual(0, fibValue)
    }

    func testFib1Equals1() throws {
        let fibValue = Fib.doFib(upTo: 1)

        // Call the method on the instance
        //XCTAssertNotNil(fib)
        XCTAssertEqual(1, fibValue)
    }
  
    func testFib2Equals1() throws {
        let fibValue = Fib.doFib(upTo: 2)

        // Call the method on the instance
        //XCTAssertNotNil(fib)
        XCTAssertEqual(1, fibValue)
    }
  
    func testFib3Equals2() throws {
        let fibValue = Fib.doFib(upTo: 3)

        // Call the method on the instance
        //XCTAssertNotNil(fib)
        XCTAssertEqual(2, fibValue)
    }
 
    func testFib4Equals3() throws {
        let fibValue = Fib.doFib(upTo: 4)

        // Call the method on the instance
        //XCTAssertNotNil(fib)
        XCTAssertEqual(3, fibValue)
    }
    
    func testFib5Equals5() throws {
        let fibValue = Fib.doFib(upTo: 5)

        // Call the method on the instance
        //XCTAssertNotNil(fib)
        XCTAssertEqual(5, fibValue)
    }
    
    func testFib6Equals8() throws {
        let fibValue = Fib.doFib(upTo: 6)

        // Call the method on the instance
        //XCTAssertNotNil(fib)
        XCTAssertEqual(8, fibValue)
    }
    
    func testFib7Equals13() throws {
        let fibValue = Fib.doFib(upTo: 7)

        // Call the method on the instance
        //XCTAssertNotNil(fib)
        XCTAssertEqual(13, fibValue)
    }
    
    func testExample() throws {
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
