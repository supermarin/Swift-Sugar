//
//  ArrayExtensionsTests.swift
//  SwiftSugar
//
//  Created by Rui Peres on 06/07/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import XCTest

class ArrayExtensionsTests: XCTestCase {

    func testTake1Element (){
        
        var result : Array = [1,2,3].initial(1)
        XCTAssertEqual(result[0], 1, "Should be 1")
        XCTAssertEqual(result.count, 1, "Should have 1 element")
    }
    
    func testTakeElement (){
        
        var result : Array = [1,2,3].initial()
        XCTAssertEqual(result[0], 1, "Should be 1")
        XCTAssertEqual(result.count, 1, "Should have 1 element")
    }
    
    func testTakeMoreElementsThanArrayHas (){
        
        var result : Array = [1,2,3].initial(4)
        XCTAssertEqual(result.count, 0, "Should have 0 element")
    }
    
    func testDrop (){
        var result : Array = [1,2,3].drop({$0 % 2 == 0})
        XCTAssertEqual(result[0], 2, "Should be 2")
    }
    
    func testMinimum (){
     
        var minimum : Int = Array<Int>.minimum([1,2,3,4,5])
        XCTAssertEqual(minimum, 1, "Should be 1")
    }
    
    func testMaximum (){
        
        var maximum : Int = Array<Int>.maximum([1,2,3,4,5])
        XCTAssertEqual(maximum, 5, "Should be 5")
    }
    
    func testNumberTimesRepeated (){
        
        var numberTimesRepeated : Int = Array<Int>.numberTimesRepeated([1,2,3,4,5], elementInArray: 2)
        XCTAssertEqual(numberTimesRepeated, 1, "Should be 1")
    }
}
