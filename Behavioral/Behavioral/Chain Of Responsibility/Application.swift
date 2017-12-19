//
//  Application.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Application: HelpHandler {
    
    public init(topic: Topic) {
        super.init(successor: nil, topic: topic)
    }
    
}
