//
//  ObserverTests.swift
//  BehavioralTests
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Behavioral

class ObserverTests: XCTestCase {
    
    func testObserverPattern() {
        let clockTimer = ClockTimer()
        
        _ = DigitalClock(clockTimer)
        
        _ = AnalogClock(clockTimer)
        
        XCTAssertTrue(true, "Pass")
    }
    
}
