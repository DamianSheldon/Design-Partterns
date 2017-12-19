//
//  TCPClosed.swift
//  Behavioral
//
//  Created by Meiliang Dong on 19/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class TCPClosed: TCPState {
    open static let instance = TCPClosed()
    
    open override func activeOpen(_ connection: TCPConnection) {
        changeState(connection, TCPEstablished.instance)
    }
    
    open override func passtiveOpen(_ connection: TCPConnection) {
        changeState(connection, TCPListen.instance)
    }
    
}
