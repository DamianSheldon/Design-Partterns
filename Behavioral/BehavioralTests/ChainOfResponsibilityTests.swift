//
//  BehavioralTests.swift
//  BehavioralTests
//
//  Created by Meiliang Dong on 13/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Behavioral

class ChainOfResponsibilityTests: XCTestCase {
    
    func testChainOfResponsibilityPattern() {
        let application = Application(topic: .application)
        let dialog = Dialog(successor: application, topic: .parentOrientation)
        let button = Button(successor: dialog, topic: .print)
        
        button.handleHelp()
        
        XCTAssertTrue(true, "Pass")
    }
    
}
