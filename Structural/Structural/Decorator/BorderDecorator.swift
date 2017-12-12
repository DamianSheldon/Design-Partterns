//
//  BorderDecorator.swift
//  Structural
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class BorderDecorator: Decorator {
    private var _width: CGFloat
    
    public override convenience init(component: VisualComponent) {
        self.init(component: component, width: 0.0)
    }
    
    public init(component: VisualComponent, width: CGFloat) {
        _width = width
        
        super.init(component: component)
    }
    
    open override func draw() {
        super.draw()
        
        drawBorder(_width)
    }
    
    open func drawBorder(_ width: CGFloat) -> Void {
        
    }
}
