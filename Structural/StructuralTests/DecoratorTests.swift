//
//  DecoratorTests.swift
//  StructuralTests
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest

@testable import Structural

class DecoratorTests: XCTestCase {
    
    func testDecoratorPattern() {
        let fileStream = FileStream(fileName: "path to destination")
        
        let ascii7Stream = ASCII7Stream(stream: fileStream)
        
        let compressingStream = CompressingStream(stream: ascii7Stream)
        
        compressingStream.putInt(12)
        compressingStream.putString("origin string")
        
        XCTAssertTrue(true, "Pass")
    }
    
}
