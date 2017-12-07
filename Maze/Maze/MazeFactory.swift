open class MazeFactory {
    open func makeMaze() -> Maze {
        return Maze()
    }
    
    open func makeWall() -> Wall {
        return Wall()
    }
    
    open func makeRoom(no: Int) -> Room {
        return Room(roomNo: no)
    }
    
    open func makeDoor(fromRoom: Room, toRoom: Room) -> Door {
        return Door(roomFrom: fromRoom, roomTo: toRoom)
    }
}

