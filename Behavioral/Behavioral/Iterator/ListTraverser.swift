//
//  ListTraverser.swift
//  Behavioral
//
//  Created by Meiliang Dong on 15/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class ListTraverser<Item> {
    private var _list: List<Item>
    
    private lazy var _iterator = ListIterator(_list)
    
    public init(list: List<Item>) {
        _list = list
    }
    
    /* Return value indicate whether iterate stop in advance or not */
    open func traverse() -> Bool {
        var result = false
        
        _iterator.first()
        
        while !_iterator.isDone() {
            let item = _iterator.currentItem()
            
            result = processItem(item)
            if !result {
                break
            }
            
            _iterator.next()
        }
        
        return result
    }
    
    open func processItem(_ item: Item) -> Bool {
        fatalError("Must implement in subclass")
    }
}
