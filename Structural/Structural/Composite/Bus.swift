//
//  Bus.swift
//  Structural
//
//  Created by Meiliang Dong on 11/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Bus: CompositeEquipment {
    open override func accept(_ visitor: EquipmentVisitor) {
        let iterator = createIterator()
        iterator.first()
        while !iterator.isDone() {
            iterator.currentItem()?.accept(visitor)
            iterator.next()
        }
        
        visitor.visitBus(self)
    }
}
