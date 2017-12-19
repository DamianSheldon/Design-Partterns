//
//  NotExp.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class NotExp: BooleanExp {
    private var _operand1: BooleanExp
    
    public init(op1: BooleanExp) {
        _operand1 = op1
        
        super.init()
    }
    
    open override func evaluate(context: inout Context) -> Bool {
        return !_operand1.evaluate(context:&context)
    }
    
    open override func replace(_ variableName: String, variableExp: BooleanExp) -> BooleanExp {
        return NotExp(op1: _operand1.replace(variableName, variableExp: variableExp))
    }
}
