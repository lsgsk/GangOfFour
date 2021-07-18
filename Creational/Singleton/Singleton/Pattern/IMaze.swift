import Foundation

enum Direction {
	case north
	case south
	case east
	case west
}

protocol IMapSite {
	func enter()
}

protocol IRoom: IMapSite {
	init(roomNumber: Int)
	var roomNumber: Int { get }
	subscript(direction: Direction) -> IMapSite? { get set }
}

protocol IWall: IMapSite {
	init()
}

protocol IDoor: IMapSite {
	init(room1: IRoom, room2: IRoom)
	func otherSideFrom(room: IRoom) -> IRoom
}

protocol IMaze: IMapSite {
	init()
	mutating func addRoom(room: IRoom)
	mutating func roomNo(number: Int) -> IRoom?
}
