//
//  TCPConnection.swift
//  Behavioral
//
//  Created by Meiliang Dong on 19/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class TCPConnection {
    private var _state: TCPState
    
    public init() {
        _state = TCPClosed.instance
    }
    
    open func activeOpen() -> Void {
        _state.activeOpen(self)
    }
    
    open func passtiveOpen() -> Void {
        _state.passtiveOpen(self)
    }
    
    open func close() -> Void {
        _state.close(self)
    }
    
    open func send() -> Void {
        _state.send(self)
    }
    
    open func acknowlege() -> Void {
        _state.activeOpen(self)
    }
    
    open func synchronize() -> Void {
        _state.synchronize(self)
    }
    
    open func changeState(_ state: TCPState) -> Void {
        _state = state
    }
}
