//
//  InterpreterTests.swift
//  BehavioralTests
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Behavioral

class InterpreterTests: XCTestCase {
    
    func testInterpreterPattern() {
        // Expression: (true and x) or ( y and (not x))
        let x = VariableExp(name: "X")
        let y = VariableExp(name: "Y")
        
        let expresion = OrExp(op1: AndExp(op1: Constant(withValue: true), op2: x),
                              op2: AndExp(op1: y, op2: NotExp(op1: x)))
        
        var context = Context()
        context.assign(variableExp: x, value: false)
        context.assign(variableExp: y, value: true)
        
        let result = expresion.evaluate(context: &context)
        
        // (true and false) or (true and (not false)) = false or (true and true) = true
        XCTAssertTrue(result, "Pass")
    }
    
}
