//
//  MoveCommand.swift
//  Behavioral
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class MoveCommand: Command {
    private var _target: Graphic
    private var _delta: CGFloat
    
    private var _state: ConstraintMemento?
    
    public override init() {
        fatalError("Must init with init(withGraphic, delta)")
    }
    
    public init(withGraphic graphic: Graphic, delta: CGFloat) {
        _target = graphic
        _delta = delta
        
        super.init()
    }
    
    open override func execute() {
        let solver = ConstraintSolver.instance
        
        _state = solver.createMemento()
        
        _target.move(_delta)
        
        solver.solve()
    }
    
    open override func unexecute() {
        let solver = ConstraintSolver.instance
        
        _target.move(-_delta)
        
        solver.setMemento(_state!)
        solver.solve()
    }
}
