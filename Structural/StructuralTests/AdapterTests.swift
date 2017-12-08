//
//  StructuralTests.swift
//  StructuralTests
//
//  Created by Meiliang Dong on 08/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Structural

class AdapterTests: XCTestCase {
    
    func testObjectAdapter() {
        let textView = TextView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
        
        let textShape = TextShape(textView: textView)
        
        var bottomLeft = CGPoint(x: 0, y: 0)
        var topRight = CGPoint(x: 0, y: 0)
        
        textShape.boundingBox(bottomLeft: &bottomLeft, topRight: &topRight)
        
        XCTAssertEqual(bottomLeft, CGPoint(x: 0, y: 568))
        XCTAssertEqual(topRight, CGPoint(x: 320, y: 0))
    }
    
}
