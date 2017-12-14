//
//  AndExp.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class AndExp: BooleanExp {
    private var _operand1: BooleanExp
    private var _operand2: BooleanExp
    
    public override init() {
        fatalError("Must init with init(op1: op2:)")
    }
    
    public init(op1: BooleanExp, op2: BooleanExp) {
        _operand1 = op1
        _operand2 = op2
        
        super.init()
    }
    
    open override func evaluate(context: inout Context) -> Bool {
        return _operand1.evaluate(context:&context) && _operand2.evaluate(context:&context)
    }
    
    open override func replace(_ variableName: String, variableExp: BooleanExp) -> BooleanExp {
        return AndExp(op1: _operand1.replace(variableName, variableExp: variableExp),
                      op2: _operand2.replace(variableName, variableExp: variableExp))
    }
}
