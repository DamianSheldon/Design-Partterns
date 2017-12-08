open class Door {
    private var roomFrom: Room
    private var roomTo : Room
    
    public init(roomFrom: Room, roomTo: Room) {
        self.roomFrom = roomFrom
        self.roomTo = roomTo
    }
    
    open func clone() -> Door {
        return Door(roomFrom: self.roomFrom, roomTo: self.roomTo)
    }
    
    open func initialize(roomFrom: Room, roomTo: Room) {
        self.roomFrom = roomFrom
        self.roomTo = roomTo
    }
}
