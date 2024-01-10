//
//  MathService.swift
//  UnitTestingHW
//
//  Created by Sofa on 10.01.24.
//

import Foundation


class MathService {
    
    private var result = 0
    private var doubleResult = 0.0
    
    func sumOfNumbers(firstNumber: Int, secondNumber: Int) -> Int {
        result = firstNumber + secondNumber
        return result
    }
    
    func multiplicationOfNumbers(firstNumber: Int, secondNumber: Int) -> Int {
        result = firstNumber * secondNumber
        return result
    }
    
    func divisionOfNumbers(firstNumber: Double, secondNumber: Double) throws -> Double {
        if secondNumber == 0.0 {
            throw Errors.canNotBeDividedByZero
        }
        doubleResult = firstNumber / secondNumber
        return doubleResult
    }
    
}
enum Errors: Error {
    case canNotBeDividedByZero
}
