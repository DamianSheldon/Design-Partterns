//
//  List.swift
//  Behavioral
//
//  Created by Meiliang Dong on 15/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class List<Item: Equatable>: AbstractList<Item> {
    private var _items: [Item]
    
    public override init() {
        fatalError("Must init with init(_:)")
    }
    
    public init(_ items: [Item]) {
        _items = items
        
        super.init()
    }
    
    open override func createIterator() -> Iterator<Item> {
        return ListIterator(self)
    }
    
    open override func count() -> Int {
        return _items.count
    }
    
    open override func getItem(_ index: Int) -> Item {
        return _items[index]
    }
    
    open override func append(_ item: Item) {
        _items.append(item)
    }
    
    open override func remove(_ item: Item) {
        if let i = _items.index(where:  {(e: Item) in return e == item }) {
            _items.remove(at: i)
        }
    }
}
