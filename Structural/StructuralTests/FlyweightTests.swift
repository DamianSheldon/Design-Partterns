//
//  FlyweightTests.swift
//  StructuralTests
//
//  Created by Meiliang Dong on 13/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Structural

class FlyweightTests: XCTestCase {
    
    func testFlyweightPattern() {
        let glyphFactory = GlyphFactory()
        
        let character = glyphFactory.createCharacter(0)
        character.setFont(font: UIFont.preferredFont(forTextStyle: .headline))
        
        let bodyCharacter = glyphFactory.createCharacter(0)
        bodyCharacter.setFont(font: UIFont.preferredFont(forTextStyle: .body))
        
        XCTAssertNotNil(bodyCharacter.getFont())
        XCTAssertEqual(bodyCharacter.getFont()!.pointSize, UIFont.preferredFont(forTextStyle: .body).pointSize)
    }
    
}
