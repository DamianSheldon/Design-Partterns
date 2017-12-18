//
//  Control.swift
//  Behavioral
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Control {
    private var _dialogDirector: DialogDirector
    
    public init(withDialogDirector dialogDirector: DialogDirector) {
        _dialogDirector = dialogDirector
    }
    
    open func change() -> Void {
        _dialogDirector.widgetChanged(self)
    }
}
