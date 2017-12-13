//
//  ProgramNodeBuilder.swift
//  Structural
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class ProgramNodeBuilder {
    open func newVariable(_ variableName: String) -> ProgramNode {
        return ProgramNode()
    }
    
    open func newReturnStatement(_ value: ProgramNode) -> ProgramNode {
        return ProgramNode()
    }
    
    open func newCondition(_ condition: ProgramNode, truePart: ProgramNode, falsePart: ProgramNode) -> ProgramNode {
        return ProgramNode()
    }
    
    func getRootNode() -> ProgramNode {
        return ProgramNode()
    }
}
