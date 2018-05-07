//: Playground - noun: a place where people can play

import UIKit
import XCTest


func insertionSort(_ arr: inout [Int]) -> [Int] {
    for i in 1 ..< arr.count {
        let value = arr[i]

        var j = i - 1

        while j >= 0 && value < arr[j] {
            arr.swapAt(j, j + 1)
            j -= 1
        }

        arr[j + 1] = value
    }

    return arr
}

class InsertionSortTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCase1InsertionSort() {
        var arr = [4, 3, 2, 1]
        XCTAssertEqual(Array(1 ... 4), insertionSort(&arr))
    }
    
    func testCase2InsertionSort() {
        var arr = [6, 3, 5, 4, 1, 2]
        XCTAssertEqual(Array(1 ... 6), insertionSort(&arr))
    }
    
    func testCase3InsertionSort() {
        var arr = [4, 5, 3, 6, 1, 2]
        XCTAssertEqual(Array(1 ... 6), insertionSort(&arr))
    }
    
    func testCase4InsertionSort() {
        var arr = [6, 3, 5, 1]
        XCTAssertEqual([1, 3, 5, 6], insertionSort(&arr))
    }
    
    func testCase5InsertionSort() {
        var arr = [10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26]
        XCTAssertEqual([-1, 0, 1, 2, 3, 3, 5, 8, 9, 10, 26, 27], insertionSort(&arr))
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

InsertionSortTests.defaultTestSuite.run()
