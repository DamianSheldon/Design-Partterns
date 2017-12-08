//
//  WindowSystemFactory.swift
//  Structural
//
//  Created by Meiliang Dong on 08/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import Foundation

public struct WindowSystemFactory {
    public static let instance = WindowSystemFactory()
    
    public func makeWindowImp() -> WindowImp {
        let systemName = ProcessInfo.processInfo.operatingSystemVersionString
        
        var imp: WindowImp
        
        switch systemName {
        case "X Window":
            imp = WindowImp()
        
        case "Presentation Manager":
            imp = WindowImp()
            
        default:
            imp = WindowImp()
        }
        
        return imp
    }
}
