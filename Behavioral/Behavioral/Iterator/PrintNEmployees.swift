//
//  PrintNEmployees.swift
//  Behavioral
//
//  Created by Meiliang Dong on 15/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class PrintNEmployees: ListTraverser<Employee> {
    private var _count: Int
    private var _index: Int = 0
    
    public override init(list: List<Employee>) {
        fatalError("Must init with init(list:,count:)")
    }
    
    public init(list: List<Employee>, count: Int) {
        _count = count
        
        super.init(list: list)
    }
    
    open override func processItem(_ item: Employee) -> Bool {
        _index += 1
        
        item.print()
        
        return _index + 1 < _count
    }
}
