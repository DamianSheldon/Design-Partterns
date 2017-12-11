//
//  Window.swift
//  Structural
//
//  Created by Meiliang Dong on 08/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Window {
    open static func getWindowImp() -> WindowImp {
        return WindowSystemFactory.instance.makeWindowImp()
    }
    
    // Requests handled by window
    open func drawContents() -> Void {
        
    }
    
    open func open() -> Void {
        
    }
    
    open func close() -> Void {
        
    }
    
    open func iconify() -> Void {
        
    }
    
    open func deinconify() -> Void {
        
    }
    
    // Request forwarded to implementation
    open func setOrigin(_ origin: CGPoint) -> Void {
        
    }
    
    open func setExtent(_ extent: CGRect) -> Void {
        
    }
    
    open func rise() -> Void {
        
    }
    
    open func lower() -> Void {
        
    }
    
    open func drawLine(from startPoint: CGPoint, to endPoint: CGPoint) -> Void {
        
    }
    
    open func drawRect(_ rect: CGRect) -> Void {
        
    }
    
    open func drawPolygon(with points: [CGPoint]) -> Void {
        
    }
    
    open func drawText(_ text: String, atPoint p: CGPoint) -> Void {
        
    }
}
