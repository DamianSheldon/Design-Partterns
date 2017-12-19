//
//  TCPEstablished.swift
//  Behavioral
//
//  Created by Meiliang Dong on 19/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class TCPEstablished: TCPState {
    open static let instance = TCPEstablished()
    
    open override func close(_ connection: TCPConnection) {
        changeState(connection, TCPClosed.instance)
    }
}
