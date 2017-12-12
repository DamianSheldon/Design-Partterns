//
//  CompositeTests.swift
//  StructuralTests
//
//  Created by Meiliang Dong on 11/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Structural

class CompositeTests: XCTestCase {
    func testCompositePattern() {
        let cabinet = Cabinet(name: "PC Cabinet")
        let chassis = Chassis(name: "PC Chassis")
        
        cabinet.add(equipment: chassis)
        
        let bus = Bus(name: "MCA Bus")
        
        let card = Card(name: "16 Mbp Token Ring")
        card.netPrice = 328
        
        bus.add(equipment: card)
        
        chassis.add(equipment: bus)
        
        let floppyDisk = FloppyDisk(name: "3.5in Floppy")
        floppyDisk.netPrice = 365
        chassis.add(equipment: floppyDisk)
        
        XCTAssertEqual(chassis.netPrice, 328 + 365)
    }
    
}
