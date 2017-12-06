class MazeFactory {
    func makeMaze() -> Maze {
        return Maze()
    }
    
    func makeWall() -> Wall {
        return Wall()
    }
    
    func makeRoom(no: Int) -> Room {
        return Room(roomNo: no)
    }
    
    func makeDoor(fromRoom: Room, toRoom: Room) -> Door {
        return Door(roomFrom: fromRoom, roomTo: toRoom)
    }
}

