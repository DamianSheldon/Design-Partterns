//
//  CompositeEquipment.swift
//  Structural
//
//  Created by Meiliang Dong on 11/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class CompositeEquipment: Equipment {
    private var _equipments = [Equipment]()
    
    private lazy var _iterator: ListIterator<Equipment> = ListIterator<Equipment>(equipments: _equipments)
    
    open override var netPrice: Double {
        get {
            var total = 0.0
            _iterator.first()
            
            while !_iterator.isDone() {
                if let e = _iterator.currentItem() {
                    total += e.netPrice
                }
                
                _iterator.next()
            }
            
            return total
        }
        
        set {
            fatalError("Can't set composite equipment's netPrice!")
        }
    }
    
    open override func add(equipment: Equipment) {
        _equipments.append(equipment)
    }
    
    open override func createIterator() -> Iterator<Equipment> {
        return _iterator
    }
}
