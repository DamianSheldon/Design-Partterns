//
//  PasteCommand.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class PasteCommand: Command {
    private var _doc: Document
    
    public init(document: Document) {
        _doc = document
        
        super.init()
    }
    
    open override func execute() {
        _doc.paste()
    }
}
