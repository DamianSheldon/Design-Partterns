//
//  ListBox.swift
//  Behavioral
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class ListBox: Control {
    open var listItems: [String]?
    
    private var _current: Int?
    
    open func setList(_ items: [String]) -> Void {
        listItems = items
    }
    
    open func select(_ index: Int) -> Void {
        _current = index
        
        change()
    }
    
    func getSelection() -> Int? {
        return _current
    }
}
