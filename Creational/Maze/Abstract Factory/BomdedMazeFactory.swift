open class BomdedMazeFactory: MazeFactory {
    open override func makeRoom(no: Int) -> Room {
        return RoomWithABomd(roomNo: no)
    }
    
    open override func makeWall() -> Wall {
        return BomdedWall()
    }
}
