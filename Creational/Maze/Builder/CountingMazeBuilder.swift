//
//  CountingMazeBuilder.swift
//  Maze
//
//  Created by Meiliang Dong on 07/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class CountingMazeBuilder: MazeBuilder {
    private var _rooms = 0
    private var _doors = 0
    
    open override func buildRoom(_ room: Int) {
        _rooms += 1
    }
    
    open override func buildDoor(roomFrom: Int, roomTo: Int) {
        _doors += 1
    }
    
    open func getCounts(rooms: inout Int, doors: inout Int) -> Void {
        rooms = _rooms
        doors = _doors
    }
}
