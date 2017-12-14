//
//  VariableExp.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class VariableExp: BooleanExp {
    open var name: String
    
    public override init() {
        fatalError("Must init with init(name:)")
    }
    
    public init(name: String) {
        self.name = name
        
        super.init()
    }
    
    open override func evaluate(context: inout Context) -> Bool {
        return context.lookUp(exp: self.name)
    }
    
    open override func replace(_ variableName: String, variableExp: BooleanExp) -> BooleanExp {
        if variableName == name {
            return variableExp.copy()
        }
        else {
            return VariableExp(name: name)
        }
    }
    
    open override func copy() -> BooleanExp {
        return VariableExp(name: name)
    }
}
