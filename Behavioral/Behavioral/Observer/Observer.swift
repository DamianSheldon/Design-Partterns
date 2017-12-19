//
//  Observer.swift
//  Behavioral
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Observer: Equatable {
    private let _subject: Subject
    public init(_ subject: Subject) {
        _subject = subject
        _subject.attach(self)
    }
    
    deinit {
        _subject.attach(self)
    }
    
    open func update(_ subject: Subject) -> Void {
        
    }
    
    public static func ==(lhs: Observer, rhs: Observer) -> Bool {
        return lhs === rhs
    }
}
