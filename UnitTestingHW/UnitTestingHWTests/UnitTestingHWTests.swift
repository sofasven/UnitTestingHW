//
//  UnitTestingHWTests.swift
//  UnitTestingHWTests
//
//  Created by Sofa on 10.01.24.
//

import XCTest
@testable import UnitTestingHW

final class UnitTestingHWTests: XCTestCase {
    
    var sut: MathService!
    
    override func setUpWithError() throws {
        print("setUpWithError")
    }
    override func setUp() {
        super.setUp()
        sut = MathService()
        print("setUp")
    }
    
    override func tearDownWithError() throws {
        print("tearDownWithError")
    }
    override func tearDown() {
        super.tearDown()
        sut = nil
        print("tearDown")
    }
    
    // 1 = = = = = = = = = = = = =
    
    func testSumOfNumbers()  {
        print("testSumOfNumbers")
        //given (что дано)
        let numberOne = 2
        let numberTwo = 1
        //when (что произошло)
        let result = sut.sumOfNumbers(firstNumber: numberOne, secondNumber: numberTwo)
        //then (что должно получиться)
        XCTAssert(result - numberOne == numberTwo, "The numbers weren't summed")
    }
    
    // 2 = = = = = = = = = = = = =
    
    func testMultiplicationOfNumbers() {
        print("testMultiplicationOfNumbers")
        //given (что дано)
        let numberOne = 2
        let numberTwo = 1
        //when (что произошло)
        let result = sut.multiplicationOfNumbers(firstNumber: numberOne, secondNumber: numberTwo)
        //then (что должно получиться)
        XCTAssert(result / numberOne == numberTwo, "The numbers weren't multiplied")
    }
    
    // 3 = = = = = = = = = = = = =
    
    func testDivisionOfNumbers() throws {
        print("testDivisionOfNumbers")
        //given (что дано)
        let numberOne = 8.0
        let numberTwo = 2.0
        //when (что произошло)
        let result = try sut.divisionOfNumbers(firstNumber: numberOne, secondNumber: numberTwo)
        //then (что должно получиться)
        XCTAssert(result * numberTwo == numberOne, "The numbers don't divided correct")
    }
    
    func testDivisionByZero() throws {
        print("testDivisionByZero")
        //given (что дано)
        let numberOne = 8.0
        let numberTwo = 2.0
        //when (что произошло)
        let result = try sut.divisionOfNumbers(firstNumber: numberOne, secondNumber: numberTwo)
        //then (что должно получиться)
        XCTAssertThrowsError(result, "Can not divide by zero") { error in
            XCTAssertEqual(error as? Errors, Errors.canNotBeDividedByZero)
        }
    }
    
    func testPerformanceExample() throws {
        self.measure {
        }
    }
}
