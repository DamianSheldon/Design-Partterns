//
//  StreamDecorator.swift
//  Structural
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class StreamDecorator: Stream {
    private var _stream: Stream
    
    public override convenience init() {
        fatalError("Must init with stream!")
    }
    
    public init(stream: Stream) {
        _stream = stream
        
        super.init()
    }
}
