//
//  Card.swift
//  Structural
//
//  Created by Meiliang Dong on 11/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Card: Equipment {
    open override func accept(_ visitor: EquipmentVisitor) {
        visitor.visitCard(self)
    }
}
