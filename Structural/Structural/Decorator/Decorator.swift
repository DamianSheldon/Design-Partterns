//
//  Decorator.swift
//  Structural
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Decorator: VisualComponent {
    private var _component: VisualComponent
    
    public init(component: VisualComponent) {
        _component = component
        
        super.init()
    }
    
    open override func draw() {
        _component.draw()
    }
    
    open override func resize() {
        _component.resize()
    }
}
