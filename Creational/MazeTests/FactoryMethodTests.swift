//
//  FactoryMethodTests.swift
//  MazeTests
//
//  Created by Meiliang Dong on 07/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest

class FactoryMethodTests: XCTestCase {
    func testBomdMazeFactory() {
        let factory = BomdedMazeFactory()
        
        let r = factory.makeRoom(no: 0)
        XCTAssertTrue(r is RoomWithABomd)
        
        let w = factory.makeWall()
        XCTAssertTrue(w is BomdedWall)
    }
    
    func testEnchantedMazeFactory() {
        let factory = EnchantedMazeFactory()
        
        let r = factory.makeRoom(no: 0)
        XCTAssertTrue(r is EnchantedRoom)
    }
}
