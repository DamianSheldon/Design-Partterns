open class EnchantedMazeFactory: MazeFactory {
    open override func makeRoom(no: Int) -> Room {
        return EnchantedRoom(roomNo: no)
    }
    
    open override func makeDoor(fromRoom: Room, toRoom: Room) -> Door {
        return DoorNeedingSpell(roomFrom: fromRoom, roomTo: toRoom)
    }
}
