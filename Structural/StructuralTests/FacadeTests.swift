//
//  FacadeTests.swift
//  StructuralTests
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Structural

class FacadeTests: XCTestCase {
    
    func testFacadePattern() {
        let compiler = Compiler()
        compiler.compile()
        
        XCTAssertTrue(true, "Pass")
    }
    
}
