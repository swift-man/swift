//: Playground - noun: a place where people can play

import UIKit
import XCTest

func selectionSort(_ arr: inout [Int]) -> [Int] {
    for i in 0 ..< arr.count - 1 {
        var indexOfMinValue = i
        for j in i + 1 ..< arr.count {
            if  arr[j] < arr[indexOfMinValue] {
                indexOfMinValue = j
            }
        }
        
        arr.swapAt(i, indexOfMinValue)
    }
    
    return arr
}

class SelectionSortTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCase1SelectionSort() {
        var arr = [4, 3, 2, 1]
        XCTAssertEqual(Array(1 ... 4), selectionSort(&arr))
    }
    
    func testCase2SelectionSort() {
        var arr = [6, 3, 5, 4, 1, 2]
        XCTAssertEqual(Array(1 ... 6), selectionSort(&arr))
    }
    
    func testCase3SelectionSort() {
        var arr = [4, 5, 3, 6, 1, 2]
        XCTAssertEqual(Array(1 ... 6), selectionSort(&arr))
    }
    
    func testCase4SelectionSort() {
        var arr = [6, 3, 5, 1]
        XCTAssertEqual([1, 3, 5, 6], selectionSort(&arr))
    }
    
    func testCase5SelectionSort() {
        var arr = [10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26]
        XCTAssertEqual([-1, 0, 1, 2, 3, 3, 5, 8, 9, 10, 26, 27], selectionSort(&arr))
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

SelectionSortTests.defaultTestSuite.run()
