//
//  Calculator.swift
//  RPN
//
//  Created by Scott Bennett on 10/24/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import Foundation

public struct Calculator {
    
   public enum Operator {
        case add, subtract, multiply, divide
    }
        
    // Need when making a framework
    public init() {}
    
    public mutating func push(number: Double) {
        stack.push(number)
    }
    
    public mutating func push(operator: Operator) {
        
        let operand1 = stack.pop() ?? 0.0
        let operand2 = stack.pop() ?? 0.0
        
        var result: Double = 0.0
        
        switch `operator` {
        case .add:
            result = operand1 + operand2
        case .subtract:
            result = operand1 - operand2
        case .multiply:
            result = operand1 * operand2
        case .divide:
            result = operand1 / operand2
        }
        
        stack.push(result)
    }
    
    public mutating func clear() {
        stack = [0.0, 0.0]
    }
    
    public var topValue: Double? {
        return stack.peek()
    }
    
    private var stack: Stack<Double> = [0.0, 0.0]
}
