//
//  ListIterator.swift
//  Behavioral
//
//  Created by Meiliang Dong on 15/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class ListIterator<Item: Equatable>: Iterator<Item> {

    private var _list: List<Item>
    private var _current = 0
    
    public init(_ list: List<Item>) {
        _list = list
    }
    
    open override func first() {
        _current = 0
    }
    
    open override func next() {
        _current += 1
    }
    
    open override func isDone() -> Bool {
        return _current >= _list.count()
    }

    open override func currentItem() -> Item {
        return _list.getItem(_current)
    }
}
