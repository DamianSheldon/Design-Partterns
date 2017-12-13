//
//  GlyphFactory.swift
//  Structural
//
//  Created by Meiliang Dong on 13/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class GlyphFactory {
    open var _characters = [Int8: Character]()
    
    open func createCharacter(_ char: Int8) -> Character {
        if let c = _characters[char] {
            c.prepareForReuse()
            
            return c
        }
        else {
            let c = Character()
            _characters[char] = c
            
            return c
        }
    }
}
