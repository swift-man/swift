//: Playground - noun: a place where people can play

import UIKit
import XCTest

func bubbleSort(_ arr: inout [Int]) -> [Int] {
    for _ in 0 ..< arr.count - 1 {
        for j in 0 ..< arr.count - 1 {
            if arr[j] > arr[j + 1] {
                arr.swapAt(j, j + 1)
            }
        }
    }

    return arr
}


class BubbleSortTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCase1BubbleSort() {
        var arr = [4, 3, 2, 1]
        XCTAssertEqual(Array(1 ... 4), bubbleSort(&arr))
    }

    func testCase2BubbleSort() {
        var arr = [6, 3, 5, 4, 1, 2]
        XCTAssertEqual(Array(1 ... 6), bubbleSort(&arr))
    }

    func testCase3BubbleSort() {
        var arr = [4, 5, 3, 6, 1, 2]
        XCTAssertEqual(Array(1 ... 6), bubbleSort(&arr))
    }
    
    func testCase4BubbleSort() {
        var arr = [6, 3, 5, 1]
        XCTAssertEqual([1, 3, 5, 6], bubbleSort(&arr))
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

BubbleSortTests.defaultTestSuite.run()
