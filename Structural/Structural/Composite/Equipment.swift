//
//  Equipment.swift
//  Structural
//
//  Created by Meiliang Dong on 11/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Equipment {
    open var power: Double = 0.0
    open var netPrice: Double = 0.0
    open var discountPrice: Double = 0.0
    
    private lazy var _iterator: Iterator<Equipment> = Iterator<Equipment>()

    private var _name: String
    
    public init(name: String) {
        _name = name
    }
    
    open func name() -> String {
        return _name
    }
    
    open func add(equipment: Equipment) -> Void {
        
    }
    
    open func remove(equipment: Equipment) -> Void {
        
    }
    
    open func createIterator() -> Iterator<Equipment> {
        return _iterator
    }
    
    open func accept(_ visitor: EquipmentVisitor) -> Void {
        
    }
}
