//
//  DigitAccumulator.swift
//  RPN
//
//  Created by Scott Bennett on 10/24/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import Foundation

public enum DigitAccumulatorError: Error {
    case extraDecimalPoint
    case invalidDigitNumberValue
}

public struct DigitAccumulator {
    
    public enum Digit: Equatable {
        case decimalPoint
        case number(Int)
    }
    
    public init() {}
    
    public mutating func add(digit: Digit) throws {
        // Add the digit to the digits array below, or if is invalid, ignore it.
        
        switch digit {
        case .decimalPoint:
            if digits.contains(.decimalPoint) {
                // Igonore the decimal point
                throw DigitAccumulatorError.extraDecimalPoint
            }
        case .number(let value):
            if value < 0 || value > 9 {
                throw DigitAccumulatorError.invalidDigitNumberValue
            }
        }
        digits.append(digit)
    }
    
    public mutating func clear() {
        digits = []
    }
    
    public func value() -> Double? {
        let result = digits.map { (digit) -> String in
            switch digit {
            case .decimalPoint:
                return "."
            case .number(let num):
                return String(num)
            }
        }.joined()
        
        return Double(result)
    }
    
    // [1, 2, 3, ., 4, 5, ] -> 123.45
    
    private var digits: [Digit] = []
 }
