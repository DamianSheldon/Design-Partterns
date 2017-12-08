//
//  TextView.swift
//  Structural
//
//  Created by Meiliang Dong on 08/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class TextView {
    open var frame: CGRect
    
    public init(frame: CGRect) {
        self.frame = frame
    }
    
    open func getOrigin(x: inout CGFloat, y: inout CGFloat) -> Void {
        x = frame.origin.x
        y = frame.origin.y
    }
    
    open func getExtent(width: inout CGFloat, height: inout CGFloat) -> Void {
        width = frame.width
        height = frame.height
    }
    
    open func isEmpty() -> Bool {
        return frame.isEmpty
    }
}
