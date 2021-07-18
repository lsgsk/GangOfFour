import Foundation

final class BombedMazefactory: IMazeFactory {

	func makeRoom(number: Int) -> IRoom {
		return RoomWithABomb(roomNumber: number, haveBomb: self.haveBomb(number))
	}

	func makeWall() -> IWall {
		return BombedWall()
	}

	private func haveBomb(_ number: Int) -> Bool {
		return number % 5 == 0
	}
}

private struct RoomWithABomb: IRoom {
	private var sides: [Direction: IMapSite]
	private let haveBomb: Bool
	let roomNumber: Int

	init(roomNumber: Int) {
		self.init(roomNumber: roomNumber, haveBomb: false)
	}

	init(roomNumber: Int, haveBomb: Bool) {
		self.roomNumber = roomNumber
		self.haveBomb = haveBomb
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

private struct BombedWall: IWall {
	func enter() {
		print("Hit the wall")
	}
}
