//
//  MediatorTests.swift
//  BehavioralTests
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Behavioral

class MediatorTests: XCTestCase {
    
    func testMediatorPattern() {
        let fontDialogDirector = FontDialogDirector()
        fontDialogDirector.createWidgets()
        
        fontDialogDirector.listBox.setList(["option 1", "option 2", "option 3", "option ..."])
        fontDialogDirector.listBox.select(2)
        
        fontDialogDirector.entryField.recieved(text: "User input balabala...")
        
        XCTAssertTrue(true, "Pass")
    }
    
}
