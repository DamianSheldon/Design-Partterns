//
//  Iterator.swift
//  Behavioral
//
//  Created by Meiliang Dong on 15/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

//public protocol Iterator {
//    associatedtype Element
//
//    func first() -> Void
//
//    func next() -> Void
//
//    func isDone() -> Bool
//
//    func currentItem() -> Element
//}

open class Iterator<Element> {
    open func first() -> Void {
        
    }

    open func next() -> Void {
        
    }

    open func isDone() -> Bool {
        return true
    }

    open func currentItem() -> Element {
        fatalError("Must implement in Subclass")
    }
}
