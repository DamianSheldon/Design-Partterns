//
//  Context.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Context {
    private var _mapExpToValue = [String: Bool]()
    
    open func lookUp(exp: String) -> Bool {
        if let v = _mapExpToValue[exp] {
            return v
        }
        else {
            return false
        }
    }
    
    open func assign(variableExp: VariableExp, value: Bool) -> Void {
        _mapExpToValue[variableExp.name] = value
    }
}
