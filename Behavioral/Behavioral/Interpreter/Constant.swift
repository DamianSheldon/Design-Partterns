//
//  Constant.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Constant: BooleanExp {
    private var _value: Bool
    
    public init(withValue value: Bool) {
        _value = value
        
        super.init()
    }
    
    open override func evaluate(context: inout Context) -> Bool {
        return _value
    }
    
    open override func replace(_ variableName: String, variableExp: BooleanExp) -> BooleanExp {
        return variableExp
    }
    
    open override func copy() -> BooleanExp {
        return Constant(withValue: _value)
    }
}
