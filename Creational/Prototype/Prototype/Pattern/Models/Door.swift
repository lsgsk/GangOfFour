import Foundation

class Door: IDoor {
	private var room1: IRoom
	private var room2: IRoom
	private var isOpened: Bool = true

	required init() {
		self.room1 = Room(roomNumber: 0)
		self.room2 = Room(roomNumber: 0)
	}

	required init(room1: IRoom, room2: IRoom) {
		self.room1 = room1
		self.room2 = room2
	}

	func otherSideFrom(room: IRoom) -> IRoom {
		return room
	}

	func enter() {
		print("Opened the door")
	}

	func copy(with zone: NSZone? = nil) -> Any {
		let prototype = type(of: self).init()
		return prototype
	}

	func initialize(room1: IRoom, room2: IRoom) {
		self.room1 = room1
		self.room2 = room2
	}
}

