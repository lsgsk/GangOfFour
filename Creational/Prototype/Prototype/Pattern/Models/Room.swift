import Foundation

class Room: IRoom {
	private var sides: [Direction: IMapSite]
	private(set) var roomNumber: Int

	required init() {
		self.roomNumber = -1
		self.sides = [:]
	}

	required init(roomNumber: Int) {
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

	func copy(with zone: NSZone? = nil) -> Any {
		let prototype = type(of: self).init()
		return prototype
	}

	func initialize(roomNumber: Int) {
		self.roomNumber = roomNumber
	}
}
