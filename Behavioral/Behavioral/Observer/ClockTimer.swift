//
//  ClockTimer.swift
//  Behavioral
//
//  Created by Meiliang Dong on 19/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class ClockTimer: Subject {
    private var _timer: Timer?
    
    public override init() {
        super.init()
        
        _timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tick), userInfo: nil, repeats: true)
    }
    
    @objc open func tick() -> Void {
        notify()
    }
}
