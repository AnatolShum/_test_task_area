//
//  Mindbox_testTests.swift
//  Mindbox_testTests
//
//  Created by Anatolii Shumov on 19.02.2024.
//

import XCTest
@testable import Mindbox_test

final class Mindbox_testTests: XCTestCase {
    var calculator: Calculator?
    var circle: Circle?
    var triangle: Triangle?
    
    override func setUpWithError() throws {
        calculator = Calculator()
        circle = Circle(radius: 10)
        triangle = Triangle(a: 3, b: 5, c: 7)
    }
    
    override func tearDownWithError() throws {
        calculator = nil
        circle = nil
        triangle = nil
    }
    
    func testCheckArea() {
        let circleArea = calculator?.area(shape: circle!)
        let triangleArea = calculator?.area(shape: triangle!)
        XCTAssertNotNil(circleArea)
        XCTAssertEqual(circleArea, 314.1592653589793)
        XCTAssertNotNil(triangleArea)
        XCTAssertEqual(triangleArea, 6.49519052838329)
    }
    
    func testCheckTriangle() {
        guard let a = triangle?.a, let b = triangle?.b, let c = triangle?.c else { return }
        
        XCTAssertTrue((a + b) > c)
        XCTAssertTrue((b + c) > a)
        XCTAssertTrue((a + c) > b)
    }
}
