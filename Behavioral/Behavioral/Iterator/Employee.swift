//
//  Employee.swift
//  Behavioral
//
//  Created by Meiliang Dong on 15/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Employee {
    private var _name: String
    
    public init(_ name: String) {
        _name = name
    }
    
    open func print() -> Void {
        Swift.print("\(_name)\n")
    }
}
