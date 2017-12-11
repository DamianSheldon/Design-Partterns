//
//  BridgeTests.swift
//  StructuralTests
//
//  Created by Meiliang Dong on 08/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Structural

class BridgeTests: XCTestCase {
    
    func testBridgePattern() {
        let imp = ApplicationWindow.getWindowImp();
        
        XCTAssertTrue(imp is XWindowImp)
    }
}
