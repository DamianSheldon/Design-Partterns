//
//  Graphic.swift
//  Behavioral
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Graphic {
    private var _delta: CGFloat?
    
    open func move(_ delta: CGFloat) -> Void {
        _delta = delta
    }
}
