//
//  MazeTests.swift
//  MazeTests
//
//  Created by Meiliang Dong on 07/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Creational

class AbstractFactoryTests: XCTestCase {
    
    func testBomdedMazeFactory() {
        let bomdedMazeFactory = BomdedMazeFactory()
        
        let mazeGame = MazeGame()
        
        let maze = mazeGame.createMaze(factory: bomdedMazeFactory)
        
        isValidMaze(maze)
        
        XCTAssertTrue(maze.roomNo(1) is RoomWithABomd, "BomdedMazeFactory product RoomWithABomd Room!")
        XCTAssertTrue(maze.roomNo(2) is RoomWithABomd, "BomdedMazeFactory product RoomWithABomd Room!")
    }
    
    func testEnchantedMazeFactory() {
        let enchantedMazeFactory = EnchantedMazeFactory()
        
        let mazeGame = MazeGame()
        
        let maze = mazeGame.createMaze(factory: enchantedMazeFactory)
        
        isValidMaze(maze)
        
        XCTAssertTrue(maze.roomNo(1) is EnchantedRoom, "Enchanted maze's room must be EnchantedRoom!")
        XCTAssertTrue(maze.roomNo(2) is EnchantedRoom, "Enchanted maze's room must be EnchantedRoom!")
    }
    
    func testExtensibleMazeFactory() {
        let w = Wall()
        let r = Room(roomNo: 0)
        let d = Door(roomFrom: r, roomTo: r)
        
        let extensibleMazeFactory = ExtensibleMazeFactory(wallProtoType: w, doorProtoType: d, roomProtoType: r)
        
        let mazeGame = MazeGame()
        
        let maze = mazeGame.createMaze(factory: extensibleMazeFactory)
        
        isValidMaze(maze)
    }
    
    func testExtensibleMazeFactoryWithEnchantedRoom() {
        let w = Wall()
        let r = EnchantedRoom(roomNo: 0)
        let d = Door(roomFrom: r, roomTo: r)
        
        let extensibleMazeFactory = ExtensibleMazeFactory(wallProtoType: w, doorProtoType: d, roomProtoType: r)
        
        let mazeGame = MazeGame()
        
        let maze = mazeGame.createMaze(factory: extensibleMazeFactory)
        
        isValidMaze(maze)
        
        XCTAssertTrue(maze.roomNo(1) is EnchantedRoom, "Enchanted maze's room must be EnchantedRoom!")
        XCTAssertTrue(maze.roomNo(2) is EnchantedRoom, "Enchanted maze's room must be EnchantedRoom!")
    }
}
