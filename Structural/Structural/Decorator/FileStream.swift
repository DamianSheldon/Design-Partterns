//
//  FileStream.swift
//  Structural
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class FileStream: Stream {

    private var _fileName: String
    
    public init(fileName: String) {
        _fileName = fileName
        
        super.init()
    }
}
