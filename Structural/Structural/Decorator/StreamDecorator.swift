//
//  StreamDecorator.swift
//  Structural
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class StreamDecorator: Stream {
    private var _stream: Stream
    
    public init(stream: Stream) {
        _stream = stream
        
        super.init()
    }
}
