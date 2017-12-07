//
//  MazeTests.swift
//  MazeTests
//
//  Created by Meiliang Dong on 07/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Maze

class AbstractFactoryTests: XCTestCase {
    
    func testCreateMaze() {
        let bomdedMazeFactory = BomdedMazeFactory()
        
        let mazeGame = MazeGame()
        
        let maze = mazeGame.createMaze(factory: bomdedMazeFactory)
        
        XCTAssertNotNil(maze, "maze must be not nil!")
    }
}
