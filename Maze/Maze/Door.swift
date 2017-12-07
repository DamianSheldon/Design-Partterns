open class Door {
    var roomFrom: Room
    var roomTo : Room
    
    public init(roomFrom: Room, roomTo: Room) {
        self.roomFrom = roomFrom
        self.roomTo = roomTo
    }
}
