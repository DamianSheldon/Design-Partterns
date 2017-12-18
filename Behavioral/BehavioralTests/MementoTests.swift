//
//  MementoTests.swift
//  BehavioralTests
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Behavioral

class MementoTests: XCTestCase {
    
    func testMementoPattern() {
        
        let rect1 = Graphic()
        let rect2 = Graphic()
        
        let solver = ConstraintSolver.instance
        
        solver.addConstraint(firstItem: rect1, secondItem: rect2)
        
        let moveCommand = MoveCommand(withGraphic: rect2, delta: 10.24)
        moveCommand.execute()
        
        moveCommand.unexecute()
        
        XCTAssertTrue(true, "Pass")
    }
    
}
