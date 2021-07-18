import Foundation

final class MazePrototypeFactory: IMazeFactory {
	
	private let prototypeMaze: IMaze
	private let prototypeWall: IWall
	private let prototypeRoom: IRoom
	private let prototypeDoor: IDoor
	
	init(maze: IMaze, wall: IWall, room: IRoom, door: IDoor) {
		self.prototypeMaze = maze
		self.prototypeWall = wall
		self.prototypeRoom = room
		self.prototypeDoor = door
	}
	
	func makeMaze() -> IMaze {
		prototypeMaze.copy(with: nil) as! IMaze
	}
	
	func makeWall() -> IWall {
		prototypeWall.copy(with: nil) as! IWall
	}
	
	func makeRoom(number: Int) -> IRoom {
		let room = prototypeRoom.copy(with: nil) as! IRoom
		room.initialize(roomNumber: number)
		return room
	}
	
	func makeDoor(room1: IRoom, room2: IRoom) -> IDoor {
		let door = prototypeDoor.copy(with: nil) as! IDoor
		door.initialize(room1: room1, room2: room2)
		return door
	}
}
