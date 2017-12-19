//
//  Composition.swift
//  Behavioral
//
//  Created by Meiliang Dong on 19/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Composition {
    private var _compositor: Compositor
    
    public init(withCompositor compositor: Compositor) {
        _compositor = compositor
    }
    
    open func repair() -> Void {
        _compositor.compose()
    }
}
