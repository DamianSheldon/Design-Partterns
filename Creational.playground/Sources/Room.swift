public class Room {
    public var roomNo: Int
    
    var northWall : Wall?
    var southWall : Wall?
    var westWall : Wall?
    var eastWall : Wall?
    
    public init(roomNo: Int) {
        self.roomNo = roomNo
    }
    
    public func setSide(direction: Direction, wall: Wall) -> Void {
        
    }
    
    public func setDoor(_ door: Door, onDirection direction: Direction) -> Void {
        
    }
}
