//
//  ExtensibleMazeFactory.swift
//  Maze
//
//  Created by Meiliang Dong on 07/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

/**
 定义可扩展的工厂 Abstract Factory 通常为每一种它可以生产的产品定义一个操作。
 产品的种类被编码在操作型构中。增加一种新的产品要求改变 Abstract Factory 的接口以及所有与它相关的类。
 一个更灵活但不安全的设计是给创建对象的操作增加一个参数。该参数指定了被创建对象的种类。
 它可以是一个类标识符，一个整数，一个字符串，或其它任何可以标识这种产品的东西。
 实际上使用这种方法， Abstract Factory 只需要一个 “make” 操作和一个指示要创建对象的种类的参数。
 */
open class ExtensibleMazeFactory: MazeFactory {
    private var _protoTypeWall: Wall
    private var _protoTypeDoor: Door
    private var _protoTypeRoom: Room
    
    public init(wallProtoType: Wall, doorProtoType: Door, roomProtoType: Room) {
        _protoTypeWall = wallProtoType
        _protoTypeDoor = doorProtoType
        _protoTypeRoom = roomProtoType
    }
    
    open override func makeWall() -> Wall {
        return _protoTypeWall.clone()
    }
    
    open override func makeRoom(no: Int) -> Room {
        let r = _protoTypeRoom.clone()
        r.initialize(roomNo: no)
        
        return r
    }
    
    open override func makeDoor(fromRoom: Room, toRoom: Room) -> Door {
        let d = _protoTypeDoor.clone()
        d.initialize(roomFrom: fromRoom, roomTo: toRoom)
        
        return d
    }
}
