//
//  TextShape.swift
//  Structural
//
//  Created by Meiliang Dong on 08/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class TextShape: Shape {
    private var textView: TextView
    
    public init(textView: TextView) {
        self.textView = textView
        
        super.init()
    }
    
    open override func boundingBox(bottomLeft: inout CGPoint, topRight: inout CGPoint) {
        var x: CGFloat = 0.0
        var y: CGFloat = 0.0
        textView.getOrigin(x: &x, y: &y)
        
        var w: CGFloat = 0.0
        var h: CGFloat = 0.0
        textView.getExtent(width: &w, height: &h)
        
        bottomLeft = CGPoint(x: x, y: y + h)
        topRight = CGPoint(x: x + w, y: y)
    }
}
