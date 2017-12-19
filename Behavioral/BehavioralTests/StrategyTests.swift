//
//  StrategyTests.swift
//  BehavioralTests
//
//  Created by Meiliang Dong on 19/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Behavioral

class StrategyTests: XCTestCase {
    
    func testStrategyPattern() {
        _ = Composition(withCompositor: SimpleCompositor())
        
        _ = Composition(withCompositor: TexCompositor())
        
        _ = Composition(withCompositor: ArrayCompositor())
        
        XCTAssertTrue(true, "Pass")
    }
    
}
