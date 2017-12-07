open class MazeGame {
    open func createMaze(factory: MazeFactory) -> Maze {
        let aMaze = factory.makeMaze()
        
        let r1 = factory.makeRoom(no: 1)
        let r2 = factory.makeRoom(no: 2)
        
        let door = Door(roomFrom: r1, roomTo: r2)
        
        r1.setSide(direction: .North, wall: factory.makeWall())
        r1.setSide(direction: .South, wall: factory.makeWall())
        r1.setSide(direction: .West, wall: factory.makeWall())
        
        r1.setDoor(door, onDirection: .East)
        
        r2.setSide(direction: .North, wall: factory.makeWall())
        r2.setSide(direction: .East, wall: factory.makeWall())
        r2.setSide(direction: .South, wall: factory.makeWall())
        
        r2.setDoor(door, onDirection: .West)
        
        aMaze.addRoom(r1)
        aMaze.addRoom(r2)
        
        return aMaze
    }
    
    open func createMaze(builder: MazeBuilder) -> Maze? {
        builder.buildMaze()
        
        builder.buildRoom(1)
        builder.buildRoom(2)
        
        builder.buildDoor(roomFrom: 1, roomTo: 2)
        
        return builder.getMaze()
    }
}
