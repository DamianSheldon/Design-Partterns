//
//  StandardMazeBuilder.swift
//  Maze
//
//  Created by Meiliang Dong on 07/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class StandardMazeBuilder: MazeBuilder {
    private func commonWall(_ room1: Room, _ room2: Room) -> Direction? {
        return Direction.North
    }
    
    private var _currentMaze: Maze?
    
    open override func buildMaze() {
        _currentMaze = Maze()
    }
    
    open override func buildRoom(_ room: Int) {
        guard _currentMaze != nil else {
            fatalError("You must build maze before build room!")
        }
        
        if _currentMaze!.roomNo(room) == nil {
            let r = Room(roomNo: room)
            
            _currentMaze!.addRoom(r)
        }
    }
    
    open override func buildDoor(roomFrom: Int, roomTo: Int) {
        guard _currentMaze != nil else {
            fatalError("You must build maze before build door!")
        }
        
        guard let r1 = _currentMaze!.roomNo(roomFrom) else {
            fatalError("room \(roomFrom) doesn't exist!")
        }
        
        guard let r2 = _currentMaze!.roomNo(roomTo) else {
            fatalError("room \(roomTo) doesn't exist!")
        }
        
        let door = Door(roomFrom: r1, roomTo: r2)
        
        if let direction = commonWall(r1, r2) {
            r1.setDoor(door, onDirection: direction)
            r2.setDoor(door, onDirection: direction)
        }
    }
    
    open override func getMaze() -> Maze? {
        return _currentMaze
    }
}
