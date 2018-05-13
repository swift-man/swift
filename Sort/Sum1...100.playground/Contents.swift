//: Playground - noun: a place where people can play

import UIKit
import XCTest

func linearSum(_ number: Int) -> Int {
    var n = 0
    for i in 1 ... number {
        n += i
    }
    
    return n
}

func sum(_ number: Int) -> Int {
    let n = (1 + number) * number / 2
    return n
}


class SumTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCase1InsertionSort() {
        let number = 55
        XCTAssertEqual(sum(number), linearSum(number))
    }
    
    func testCase2InsertionSort() {
        let number = 100
        XCTAssertEqual(sum(number), linearSum(number))
    }
    
    func testCase3InsertionSort() {
        let number = 754
        XCTAssertEqual(sum(number), linearSum(number))
    }
    
    func testCase4InsertionSort() {
        let number = 1024
        XCTAssertEqual(sum(number), linearSum(number))
    }
    
    func testCase5InsertionSort() {
        let number = 4563
        XCTAssertEqual(sum(number), linearSum(number))
    }
}

class TestObserver: NSObject, XCTestObservation {
    func testCase(_ testCase: XCTestCase,
                  didFailWithDescription description: String,
                  inFile filePath: String?,
                  atLine lineNumber: Int) {
        assertionFailure(description, line: UInt(lineNumber))
    }
}
let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)

SumTests.defaultTestSuite.run()
