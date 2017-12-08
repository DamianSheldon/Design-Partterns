open class Maze {
    
    public init() {
        
    }
    
    var rooms = [Int: Room]()
    
    open func roomNo(_ number: Int) -> Room? {
        return rooms[number]
    }
    
    open func addRoom(_ room: Room) -> Void {
        rooms[room.roomNo] = room
    }
}
