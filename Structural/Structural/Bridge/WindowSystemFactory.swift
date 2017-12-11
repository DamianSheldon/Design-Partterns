//
//  WindowSystemFactory.swift
//  Structural
//
//  Created by Meiliang Dong on 08/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import UIKit

public struct WindowSystemFactory {
    public static let instance = WindowSystemFactory()
    
    public func makeWindowImp() -> WindowImp {
        let systemName = UIDevice.current.systemName
        
        var imp: WindowImp
        
        switch systemName {
        case "iOS":
            imp = XWindowImp()
        
        case "Presentation Manager":
            imp = PMWindowImp()
            
        default:
            imp = WindowImp()
        }
        
        return imp
    }
}
