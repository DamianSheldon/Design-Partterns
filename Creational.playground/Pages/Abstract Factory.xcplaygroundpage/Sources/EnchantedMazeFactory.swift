class EnchantedMazeFactory: MazeFactory {
    func makeRoom(no: Int) -> Room {
        return EnchantedRoom(roomNo: no)
    }
    
    func makeDoor(fromRoom: Room, toRoom: Room) -> Door {
        return DoorNeedingSpell(roomFrom: fromRoom, roomTo: toRoom)
    }
}
