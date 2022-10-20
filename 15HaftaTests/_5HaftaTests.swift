//
//  _5HaftaTests.swift
//  15HaftaTests
//
//  Created by Sümeyye Kılıçoğlu on 18.10.2022.
//

import XCTest
@testable import _5Hafta

class _5HaftaTests: XCTestCase {

    let math = Math()
    
    func testAddInteger() {
        let result = math.sum(number1: 5, number2: 10 )
       
        XCTAssertEqual(result, 15)
    }
    
    func testMultiply() {
        let result = math.multiply(number1: 10, number2: 5)
        
        XCTAssertEqual(result, 50)
    }
    func testDivide() {
        let result = math.divide(number1: 10, number2: 5)
        XCTAssertEqual(result, 2)
    }
    func testMinus() {
        let result = math.minus(number1: 10, number2: 5)
        XCTAssertEqual(result, 5)
    }
}
