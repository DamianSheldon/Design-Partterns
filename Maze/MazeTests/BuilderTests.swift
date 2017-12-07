//
//  BuilderTests.swift
//  MazeTests
//
//  Created by Meiliang Dong on 07/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest

class BuilderTests: XCTestCase {

    func testCreateMaze() {
        let game = MazeGame()
        
        let maze = game.createMaze(builder: StandardMazeBuilder())
        
        XCTAssertNotNil(maze, "maze must be not nil!")
    }
}
