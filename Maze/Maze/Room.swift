open class Room {
    open var roomNo: Int
    
    var northWall : Wall?
    var southWall : Wall?
    var westWall : Wall?
    var eastWall : Wall?
    
    public init(roomNo: Int) {
        self.roomNo = roomNo
    }
    
    open func setSide(direction: Direction, wall: Wall) -> Void {
        
    }
    
    open func setDoor(_ door: Door, onDirection direction: Direction) -> Void {
        
    }
}
