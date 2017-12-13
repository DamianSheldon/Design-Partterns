//
//  ExpressNode.swift
//  Structural
//
//  Created by Meiliang Dong on 12/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class ExpressionNode: ProgramNode {
    open override func traverse(_ generator: CodeGenerator) {
        generator.visit(self)
    }
}
