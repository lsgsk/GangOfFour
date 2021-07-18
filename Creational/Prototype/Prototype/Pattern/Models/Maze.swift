import Foundation

class Maze: IMaze {
	private var collection: [IRoom]

	required init() {
		self.collection = [IRoom]()
	}

	subscript(number: Int) -> IRoom? {
		return collection.first {  $0.roomNumber == number }
	}

	func addRoom(room: IRoom) {
		self.collection.append(room)
	}

	func enter() {
		print("Entered into the maze")
	}

	func copy(with zone: NSZone? = nil) -> Any {
		let prototype = type(of: self).init()
		return prototype
	}
}
