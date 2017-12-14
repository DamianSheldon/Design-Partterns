//
//  CommandTests.swift
//  BehavioralTests
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Behavioral

class CommandTests: XCTestCase {
    
    func testCommandPattern() {
        let openCommand = OpenCommand(fileName: "API References")
        openCommand.execute()
        
        let doc = Document(fileName: "/dev/null")
        let pasteCommand = PasteCommand(document: doc)
        
        pasteCommand.execute()
        
        XCTAssertTrue(true, "Pass")
    }
    
}
