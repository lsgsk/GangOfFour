import Foundation

final class StandardMazeBuilder: IMazeBuilder {
	
	private var currentMaze: IMaze?
	
	func buildMaze() {
		self.currentMaze = Maze()
	}
	
	func buildRoom(room: Int) {
		if self.currentMaze?.roomNo(number: room) == nil {
			var room = Room(roomNumber: room)
			room[.north] = Wall()
			room[.south] =  Wall()
			room[.east] =  Wall()
			room[.west] =  Wall()
			self.currentMaze?.addRoom(room: room)
		}
	}
	
	func buildDoor(roomFrom: Int, roomTo: Int) {
		if var roomFrom = currentMaze?.roomNo(number: roomFrom),
		   var roomTo = currentMaze?.roomNo(number: roomTo) {
			let door = Door(room1: roomFrom, room2: roomTo)
			if let commonWall = self.commonWall(roomFrom: roomFrom, roomTo: roomTo) {
				roomFrom[commonWall] = door
			}
			if let commonWall = self.commonWall(roomFrom: roomTo, roomTo: roomFrom) {
				roomFrom[commonWall] = door
			}
		}
	}
	
	func getMaze() -> IMaze? {
		return self.currentMaze
	}
	
	private func commonWall(roomFrom: IRoom, roomTo: IRoom) -> Direction? {
		switch (roomFrom.roomNumber, roomTo.roomNumber) {
		case (0,1): return .north
		case (0,3): return .east
		case (1,0): return .south
		case (1,2): return .east
		case (2,1): return .west
		case (2,3): return .south
		case (3,0): return .west
		case (3,2): return .south
		default: return nil
		}
	}
}

private struct Maze: IMaze {
	private var collection = [IRoom]()
	
	mutating func addRoom(room: IRoom) {
		self.collection.append(room)
	}
	
	mutating func roomNo(number: Int) -> IRoom? {
		return collection.first {  $0.roomNumber == number }
	}
	
	func enter() {
		print("Entered into the maze")
	}
}

private struct Room: IRoom {
	private var sides: [Direction: IMapSite]
	let roomNumber: Int
	
	init(roomNumber: Int) {
		self.roomNumber = roomNumber
		self.sides = [:]
	}
	
	subscript(direction: Direction) -> IMapSite? {
		get { return self.sides[direction] }
		set { self.sides[direction] = newValue }
	}
	
	func enter() {
		print("Entered into the room")
	}
}

private struct Door: IDoor {
	private let room1: IRoom
	private let room2: IRoom
	private var isOpened: Bool = true
	init(room1: IRoom, room2: IRoom) {
		self.room1 = room1
		self.room2 = room2
	}
	
	func otherSideFrom(room: IRoom) -> IRoom {
		return room
	}
	
	func enter() {
		print("Opened the door")
	}
}

private struct Wall: IWall {
	func enter() {
		print("Hit the wall")
	}
}
