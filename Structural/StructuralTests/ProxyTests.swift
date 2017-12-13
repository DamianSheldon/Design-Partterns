//
//  ProxyTests.swift
//  StructuralTests
//
//  Created by Meiliang Dong on 13/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Structural

class ProxyTests: XCTestCase {
    
    func testProxyPattern() {
        let imageProxy = ImageProxy(fileName: "An image file name")
        
        let textDocument = TextDocument()
        textDocument.insert(graphic: imageProxy)
        
        XCTAssertTrue(true, "Pass")
    }
    
}
