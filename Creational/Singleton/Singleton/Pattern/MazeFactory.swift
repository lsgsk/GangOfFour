import Foundation

protocol IMazeFactory {
	func makeMaze() -> IMaze
	func makeWall() -> IWall
	func makeRoom(number: Int) -> IRoom
	func makeDoor(room1: IRoom, room2: IRoom) -> IDoor
}

final class MazeFactory: IMazeFactory {
	static let instance: IMazeFactory = MazeFactory()
	private init() { }

	func makeMaze() -> IMaze {
		return Maze()
	}
	func makeWall() -> IWall {
		return Wall()
	}
	func makeRoom(number: Int) -> IRoom {
		return Room(roomNumber: number)
	}
	func makeDoor(room1: IRoom, room2: IRoom) -> IDoor {
		return Door(room1: room1, room2: room2)
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


