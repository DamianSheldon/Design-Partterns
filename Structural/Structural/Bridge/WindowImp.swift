//
//  WindowImp.swift
//  Structural
//
//  Created by Meiliang Dong on 08/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class WindowImp {
    
    open static func getWindowImp() -> WindowImp {
        return WindowSystemFactory.instance.makeWindowImp()
    }
}
