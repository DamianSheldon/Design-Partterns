enum Direction {
    case North
    case South
    case West
    case East
}

class Door {
    var roomFrom: Room
    var roomTo : Room
    
    init(roomFrom: Room, roomTo: Room) {
        self.roomFrom = roomFrom
        self.roomTo = roomTo
    }
}

class Wall {
    
}

class Room {
    var roomNo: Int
    
    var northWall : Wall?
    var southWall : Wall?
    var westWall : Wall?
    var eastWall : Wall?
    
    init(roomNo: Int) {
        self.roomNo = roomNo
    }
    
    func setSide(direction: Direction, wall: Wall) -> Void {

    }
    
    func setDoor(_ door: Door, onDirection direction: Direction) -> Void {
        
    }
}

class Maze {
    var rooms = [Int: Room]()
    
    func roomNo(_ number: Int) -> Room? {
        return rooms[number]
    }
    
    func addRoom(_ room: Room) -> Void {
        rooms[room.roomNo] = room
    }
}

class MazeBuilder {
    func buildMaze() -> Void {
        
    }
    
    func buildRoom(_ room: Int) -> Void {
        
    }
    
    func buildDoor(roomFrom: Int, roomTo: Int) -> Void {
        
    }
    
    func getMaze() -> Maze? {
        return nil
    }
}

class MazeGame {
    func createMaze(builder: MazeBuilder) -> Maze? {
        builder.buildMaze()
        
        builder.buildRoom(1)
        builder.buildRoom(2)
        
        builder.buildDoor(roomFrom: 1, roomTo: 2)
        
        return builder.getMaze()
    }
}

class StandarMazeBuilder: MazeBuilder {
    private func commonWall(_ room1: Room, _ room2: Room) -> Direction? {
        return Direction.North
    }
    
    private var _currentMaze: Maze?
    
    override func buildMaze() {
        _currentMaze = Maze()
    }
    
    override func buildRoom(_ room: Int) {
        guard _currentMaze != nil else {
            fatalError("You must build maze before build room!")
        }
        
        if _currentMaze!.roomNo(room) == nil {
            let r = Room(roomNo: room)
            
            _currentMaze!.addRoom(r)
        }
    }
    
    override func buildDoor(roomFrom: Int, roomTo: Int) {
        guard _currentMaze != nil else {
            fatalError("You must build maze before build door!")
        }
        
        guard let r1 = _currentMaze!.roomNo(roomFrom) else {
            fatalError("room \(roomFrom) doesn't exist!")
        }
        
        guard let r2 = _currentMaze!.roomNo(roomTo) else {
            fatalError("room \(roomTo) doesn't exist!")
        }
        
        let door = Door(roomFrom: r1, roomTo: r2)
        
        if let direction = commonWall(r1, r2) {
            r1.setDoor(door, onDirection: direction)
            r2.setDoor(door, onDirection: direction)
        }
    }
    
    override func getMaze() -> Maze? {
        return _currentMaze
    }
}

let game = MazeGame()

let maze = game.createMaze(builder: StandarMazeBuilder())

class CountingMazeBuilder: MazeBuilder {
    private var _rooms = 0
    private var _doors = 0
    
    override func buildRoom(_ room: Int) {
        _rooms += 1
    }
    
    override func buildDoor(roomFrom: Int, roomTo: Int) {
        _doors += 1
    }
    
    func getCounts(rooms: inout Int, doors: inout Int) -> Void {
        rooms = _rooms
        doors = _doors
    }
}
