//
//  AnalogClock.swift
//  Behavioral
//
//  Created by Meiliang Dong on 19/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class AnalogClock: Observer {
    open override func update(_ subject: Subject) {
        draw()
    }
    
    private func draw() -> Void {
        print("Update analog clock...")
    }
}
