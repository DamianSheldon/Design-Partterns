open class EnchantedRoom: Room {
    open override func clone() -> Room {
        return EnchantedRoom(roomNo: self.roomNo)
    }
}
