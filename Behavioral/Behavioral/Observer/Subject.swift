//
//  Subject.swift
//  Behavioral
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Subject {
    
    private var _observers: List<Observer> = List([])
    
    public init() {
        
    }
    
    open func attach(_ o: Observer) -> Void {
        _observers.append(o)
    }
    
    open func detach(_ o: Observer) -> Void {
        _observers.remove(o)
    }
    
    open func notify() -> Void {
        let iterator = ListIterator(_observers)
        
        iterator.first()
        while !iterator.isDone() {
            iterator.currentItem().update(self)
            
            iterator.next()
        }
    }
}
