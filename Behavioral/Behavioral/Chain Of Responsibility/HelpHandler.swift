//
//  HelpHandler.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

public enum Topic: Int {
    case noHelp = -1
    case print = 1
    case parentOrientation = 2
    case application = 3
}

open class HelpHandler {
    private var _successor: HelpHandler?
    private var _topic: Topic
    
    public init(successor: HelpHandler?, topic: Topic = .noHelp) {
        _successor = successor
        _topic = topic
    }
    
    open func hasHelp() -> Bool {
        return _topic.rawValue != Topic.noHelp.rawValue
    }
    
    open func setHandler(_ handler: HelpHandler?, topic: Topic) -> Void {
        _successor = handler
        _topic = topic
    }
    
    open func handleHelp() -> Void {
        if let nextHandler = _successor {
            nextHandler.handleHelp()
        }
    }
}
