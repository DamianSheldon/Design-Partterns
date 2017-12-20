//
//  PricingVisitor.swift
//  Structural
//
//  Created by Meiliang Dong on 20/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class PricingVisitor: EquipmentVisitor {
    
    private var _total: Double = 0.0
    
    open override func visitBus(_ bus: Bus) {
        
    }
    
    open override func visitCard(_ card: Card) {
        _total += card.netPrice
    }
    
    open override func visitChassis(_ chassis: Chassis) {
        
    }
    
    open override func visitCabinet(_ cabinet: Cabinet) -> Void {
        
    }
    
    open override func visitFloppyDisk(_ floppyDisk: FloppyDisk) {
        _total += floppyDisk.netPrice
    }
    
    open func getTotalPrice() -> Double {
        return _total
    }
}
