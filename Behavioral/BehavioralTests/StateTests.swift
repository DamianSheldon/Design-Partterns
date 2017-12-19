//
//  StateTests.swift
//  BehavioralTests
//
//  Created by Meiliang Dong on 19/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Behavioral

class StateTests: XCTestCase {
    
    func testStatePattern() {
        let tcpConnection = TCPConnection()
        tcpConnection.activeOpen()
        
        XCTAssertTrue(true, "Pass")
    }
    
}
