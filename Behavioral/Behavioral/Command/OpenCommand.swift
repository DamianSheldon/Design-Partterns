//
//  OpenCommand.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class OpenCommand: Command {
    private var _fileName: String
    
    public init(fileName: String) {
        _fileName = fileName
    }
    
    open override func execute() {
        let _ = Document.open(fileName: _fileName)
    }
}
