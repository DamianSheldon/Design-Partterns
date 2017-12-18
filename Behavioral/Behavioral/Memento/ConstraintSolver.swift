//
//  ConstraintSolver.swift
//  Behavioral
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class ConstraintSolver {
    static let instance = ConstraintSolver()
    
    open func createMemento() -> ConstraintMemento {
        return ConstraintMemento()
    }
    
    open func setMemento(_ memento: ConstraintMemento) -> Void {
        
    }
    
    open func addConstraint(firstItem: Graphic, secondItem: Graphic) -> Void {
        
    }
    
    open func removeConstraint(firstItem: Graphic, secondItem: Graphic) -> Void {
        
    }
    
    open func solve() -> Void {
        
    }
}
