//
//  TCPState.swift
//  Behavioral
//
//  Created by Meiliang Dong on 19/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class TCPState {
    open func activeOpen(_ connection: TCPConnection) -> Void {
        
    }
    
    open func passtiveOpen(_ connection: TCPConnection) -> Void {
        
    }
    
    open func close(_ connection: TCPConnection) -> Void {
        
    }
    
    open func send(_ connection: TCPConnection) -> Void {
        
    }
    
    open func acknowlege(_ connection: TCPConnection) -> Void {
        
    }
    
    open func synchronize(_ connection: TCPConnection) -> Void {
        
    }
    
    open func changeState(_ connection: TCPConnection, _ state: TCPState) -> Void {
        
    }
}
