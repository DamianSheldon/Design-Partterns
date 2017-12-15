//
//  AbstractList.swift
//  Behavioral
//
//  Created by Meiliang Dong on 15/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class AbstractList<Item> {
    public init() {
        
    }
    
    open func createIterator() -> Iterator<Item> {
        fatalError("Must implement in Subclass")
    }
    
    open func count() -> Int {
        fatalError("Must implement in Subclass")
    }
    
    open func getItem(_ index: Int) -> Item {
        fatalError("Must implement in Subclass")
    }
    
    open func append(_ item: Item) -> Void {
        
    }
    
    open func remove(_ item: Item) -> Void {
        
    }
}
