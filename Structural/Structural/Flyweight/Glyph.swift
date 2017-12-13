//
//  Glyph.swift
//  Structural
//
//  Created by Meiliang Dong on 13/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Glyph {
    private var _font: UIFont?
    
    open func setFont(font: UIFont) -> Void {
        _font = font
    }
    
    open func getFont() -> UIFont? {
        return _font
    }
    
    open func prepareForReuse() -> Void {
        _font = nil
    }
}
