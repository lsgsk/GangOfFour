import Foundation

final class EnchantedMazeFactory: IMazeFactory {
	func makeRoom(number: Int) -> IRoom {
		return EnchantedRoom(roomNumber: number, spell: self.castSpell(number))
	}

	func makeDoor(room1: IRoom, room2: IRoom) -> IDoor {
		return DoorNeedingSpell(room1: room1, room2: room2)
	}

	private func castSpell(_ number: Int) -> Spell {
		return (number % 2 == 0) ? .earth : .air
	}
}

private struct EnchantedRoom: IRoom {
	private var sides: [Direction: IMapSite]
	private let spell: Spell
	let roomNumber: Int

	init(roomNumber: Int) {
		self.init(roomNumber: roomNumber, spell: .earth)
	}

	init(roomNumber: Int, spell: Spell) {
		self.roomNumber = roomNumber
		self.spell = spell
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

private struct DoorNeedingSpell: IDoor {
	private let room1: IRoom
	private let room2: IRoom
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

private enum Spell {
	case fire
	case water
	case earth
	case air
}
