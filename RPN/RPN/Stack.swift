//
//  Stack.swift
//  RPN
//
//  Created by Scott Bennett on 10/24/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import Foundation

/*
 Private
 Fileprivate - not used often
 Internal
 Public
 Open - not used often
 */

struct Stack<T>: ExpressibleByArrayLiteral {
    
    typealias ArrayLiteralElement = T
    
    init(arrayLiteral elements: ArrayLiteralElement...) {
        items = elements
    }
    
    init(_ intialItems: [T] = [T]()) {
        items = intialItems
        
    }
    mutating func push(_ value: T) {
        items.append(value)
    }
    
    mutating func pop() -> T? {
        return items.popLast()
    }
    
    func peek() -> T? {
        return items.last
    }
    
    private(set) var items: [T]
}
