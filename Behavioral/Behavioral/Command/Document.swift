//
//  Document.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Document {
    open static func open(fileName: String) -> Bool {
        print("Opened \(fileName)")
        
        return true
    }
    
    private var _fileName: String
    
    public init(fileName: String) {
        _fileName = fileName
    }
    
    open func paste() -> Void {
        print("Paste to \(_fileName)")
    }
}
