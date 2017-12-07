open class BomdedMazeFactory: MazeFactory {
    open func makeRoom(no: Int) -> Room {
        return RoomWithABomd(roomNo: no)
    }
    
    open override func makeWall() -> Wall {
        return BomdedWall()
    }
}
