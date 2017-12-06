public class Maze {
    
    public init() {
        
    }
    
    var rooms = [Int: Room]()
    
    public func roomNo(_ number: Int) -> Room? {
        return rooms[number]
    }
    
    public func addRoom(_ room: Room) -> Void {
        rooms[room.roomNo] = room
    }
}
