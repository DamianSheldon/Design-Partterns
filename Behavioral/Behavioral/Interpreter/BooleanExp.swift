//
//  BooleanExp.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class BooleanExp {
    public init() {
        
    }
    
    open func evaluate(context: inout Context) -> Bool {
        return false
    }
    
    open func replace(_ variableName: String, variableExp: BooleanExp) -> BooleanExp {
        return BooleanExp()
    }
    
    open func copy() -> BooleanExp {
        return BooleanExp()
    }
}
