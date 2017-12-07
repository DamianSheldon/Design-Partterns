//
//  Util.swift
//  MazeTests
//
//  Created by Meiliang Dong on 07/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest

func isValidMaze(_ maze: Maze) -> Void {
    XCTAssertNotNil(maze, "maze must be not nil!")
    XCTAssertNotNil(maze.roomNo(1), "room 1 must be not nil")
    XCTAssertNotNil(maze.roomNo(2), "room 2 must be not nil")
}
