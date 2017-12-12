//
//  ListIterator.swift
//  Structural
//
//  Created by Meiliang Dong on 11/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class ListIterator<Element>: Iterator<Element> {
    private var _equipments: [Equipment]
    private var _index = 0
    
    public init(equipments: [Equipment]) {
        _equipments = equipments
        
        super.init()
    }
    
    open override func first() {
        _index = 0
    }
    
    open override func next() {
        _index += 1
    }
    
    open override func isDone() -> Bool {
        return _index + 1 > _equipments.count
    }
    
    open override func currentItem() -> Element? {
        return _equipments[_index] as? Element
    }
}
