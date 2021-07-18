import Foundation

enum Direction {
	case north
	case south
	case east
	case west
}

protocol IMapSite: NSCopying {
	func enter()
}

protocol IMaze: IMapSite {
	init()
	subscript(number: Int) -> IRoom? { get }
	func addRoom(room: IRoom)
}

protocol IRoom: IMapSite {
	init(roomNumber: Int)
	var roomNumber: Int { get }
	subscript(direction: Direction) -> IMapSite? { get set }
	func initialize(roomNumber: Int)
}

protocol IWall: IMapSite {
	init()
}

protocol IDoor: IMapSite {
	init(room1: IRoom, room2: IRoom)
	func otherSideFrom(room: IRoom) -> IRoom
	func initialize(room1: IRoom, room2: IRoom)
}






