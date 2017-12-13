//
//  Compiler.swift
//  Structural
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Compiler: NSObject {
    open func compile() -> Void {
        
        let programNodeBuilder = ProgramNodeBuilder()
        let parseTree = programNodeBuilder.getRootNode()
        
        parseTree.traverse(CodeGenerator())
    }
}
